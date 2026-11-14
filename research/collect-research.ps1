# NASA Space Apps 2026 - "Flame in Freefall" deep research harvest
# Downloads PDFs from NASA NTRS (public domain) + arXiv papers + Semantic Scholar metadata
$ErrorActionPreference = 'Continue'
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$root = "C:\Users\Admin\desktop\spaceapps-prep\research"
New-Item -ItemType Directory -Force -Path "$root\papers\nasa-ntrs","$root\papers\arxiv","$root\metadata" | Out-Null
$UA = @{ 'User-Agent' = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) SpaceApps2026-Research/1.0'; 'Accept' = 'application/pdf,application/json,*/*' }
$global:seen = @{}
$global:count = 0
$manifest = New-Object System.Collections.Generic.List[object]

function Slug($t) {
  $s = ($t -replace '[^A-Za-z0-9 \-]', '') -replace '\s+', '-'
  if ($s.Length -gt 55) { $s = $s.Substring(0, 55) }
  return $s.Trim('-')
}

# ---------- 1. NTRS queries (microgravity combustion / fire safety core) ----------
$queries = @(
  'Burning and Suppression of Solids-II summary report',
  'SAFFIRE final results spacecraft fire experiment conclusion',
  'Spacecraft fire safety demonstration objectives development status',
  'Flame Extinguishment Experiment FLEX droplet',
  'FLEX-2 flames droplet combustion microgravity',
  'cool flames droplet combustion space',
  'Cool Flames Investigation gases CFI',
  'SoFIE Solid Fuel Ignition and Extinction Materials',
  'ACME Advanced Combustion via Microgravity Experiments',
  'Electric-Field Effects on Laminar Diffusion Flames',
  'Smoke and Aerosol Measurement Experiment SAME',
  'Smoke Aerosol Measurement Experiment SAME',
  'Dust and Aerosol Measurement Feasibility Test DAFT',
  'NASA-STD-6001 flammability spacecraft',
  'lunar gravity combustion',
  'Flammability of Materials on the Moon',
  'material flammability spacecraft fire safety microgravity',
  'fire detection smoke particles spacecraft',
  'water mist fire suppression spacecraft',
  'flame spread thin materials microgravity',
  'microgravity combustion review space station',
  'Combustion Integrated Rack experiments',
  'Burning Rate Emulator',
  'Smoke Point in Coflow Experiment SPICE',
  'SLICE structure liftoff combustion experiment',
  'gaseous fuel diffusion flame microgravity',
  'spacecraft atmosphere oxygen concentration flammability Artemis',
  'fire safety Moon Mars human spaceflight',
  'flame spread over thermally thin samples microgravity',
  'oxymethylene droplet cool flames',
  'ignition and flame growth in microgravity',
  'PFAS flammability materials space',
  'soot formation microgravity flames',
  'Spacecraft Fire Safety Demonstration project',
  'radiation extinction microgravity flame',
  'opposed flow flame spread microgravity',
  'concurrent flame spread microgravity forced flow'
)

foreach ($q in $queries) {
  if ($global:count -ge 75) { break }
  $eq = [System.Uri]::EscapeDataString($q)
  $url = "https://ntrs.nasa.gov/api/citations/search?q=$eq&facet=downloads&sort=score"
  try {
    $res = Invoke-RestMethod -Uri $url -Headers @{ 'User-Agent' = 'Mozilla/5.0 SpaceApps2026-Research/1.0'; 'Accept' = 'application/json' } -TimeoutSec 30
  } catch {
    Write-Output "QUERYFAIL [$q]: $($_.Exception.Message)"
    Start-Sleep -Milliseconds 800
    continue
  }
  $got = 0
  foreach ($r in $res.results) {
    if ($got -ge 3 -or $global:count -ge 75) { break }
    if (-not $r.downloadsAvailable) { continue }
    if ($global:seen.ContainsKey($r.id)) { continue }
    $global:seen[$r.id] = $true
    $dl = $r.downloads | Where-Object { $_.links.pdf } | Select-Object -First 1
    if (-not $dl) { continue }
    $pdfUrl = "https://ntrs.nasa.gov" + $dl.links.pdf
    $file = Join-Path "$root\papers\nasa-ntrs" ("{0}_{1}.pdf" -f $r.id, (Slug $r.title))
    try {
      Invoke-WebRequest -Uri $pdfUrl -OutFile $file -Headers $UA -TimeoutSec 60 -UseBasicParsing
      $global:count++
      $got++
      $manifest.Add([pscustomobject]@{ source='NTRS'; id=$r.id; title=$r.title; type=$r.stiType; date=$r.distributionDate; query=$q; file=$file; url=$pdfUrl; status='OK' })
      Write-Output ("OK  {0} | {1}" -f $r.id, $r.title)
    } catch {
      $manifest.Add([pscustomobject]@{ source='NTRS'; id=$r.id; title=$r.title; type=$r.stiType; date=$r.distributionDate; query=$q; file=$file; url=$pdfUrl; status=("FAIL: " + $_.Exception.Message) })
      Write-Output ("DLFAIL {0} : {1}" -f $pdfUrl, $_.Exception.Message)
    }
    Start-Sleep -Milliseconds 400
  }
  Start-Sleep -Milliseconds 400
}

# ---------- 2. Semantic Scholar metadata dumps ----------
$s2Queries = @(
  'microgravity combustion spacecraft fire safety',
  'cool flames droplet combustion spaceflight',
  'material flammability microgravity',
  'spacecraft fire detection smoke',
  'fire suppression spacecraft water mist',
  'retrieval augmented generation scientific literature',
  'citation grounded large language model research assistant',
  'text to SQL large language models scientific data',
  'LLM systematic review evidence synthesis automation'
)
foreach ($sq in $s2Queries) {
  $eq = [System.Uri]::EscapeDataString($sq)
  $u = "https://api.semanticscholar.org/graph/v1/paper/search?query=$eq&limit=25&fields=title,abstract,year,authors,url,externalIds,citationCount,venue"
  try {
    $j = Invoke-RestMethod -Uri $u -TimeoutSec 30
    $slug = Slug $sq
    $j | ConvertTo-Json -Depth 5 | Set-Content -Path (Join-Path "$root\metadata" ("s2_{0}.json" -f $slug)) -Encoding UTF8
    Write-Output "S2OK  [$sq] -> $($j.data.Count) papers"
  } catch { Write-Output "S2FAIL [$sq]: $($_.Exception.Message)" }
  Start-Sleep -Seconds (2+ (Get-Random -Min 1 -Max 2))
}

# ---------- 3. arXiv papers (AI architecture side) ----------
$knownArxiv = @{ '2005.11401' = 'RAG_Lewis2020'; '2310.11511' = 'SelfRAG'; '2504.17011' = 'Qwen3'; '2403.01220' = 'citation-recall-orienterr' }
foreach ($k in $knownArxiv.Keys) {
  $u = "https://arxiv.org/pdf/$k"
  $f = Join-Path "$root\papers\arxiv" ("{0}_{1}.pdf" -f $k, $knownArxiv[$k])
  try { Invoke-WebRequest -Uri $u -OutFile $f -TimeoutSec 60 -UseBasicParsing; Write-Output "ARXOK $k" } catch { Write-Output "ARXFAIL $k : $($_.Exception.Message)" }
  Start-Sleep -Milliseconds 900
}
$axQueries = @('text-to-SQL large language models', 'scientific paper question answering language models', 'language models literature review', 'schema extraction scientific documents LLM')
$axSeen = @{}
$i = 0
foreach ($aq in $axQueries) {
  $eq = [System.Uri]::EscapeDataString($aq)
  $u = "http://export.arxiv.org/api/query?search_query=all:$eq&max_results=6&sortBy=relevance"
  try {
    $xml = Invoke-WebRequest -Uri $u -TimeoutSec 30 -UseBasicParsing
    $xml.Content | Set-Content -Path (Join-Path "$root\metadata" ("arxiv_search {0}.xml" -f $i)) -Encoding UTF8
    $ids = [regex]::Matches($xml.Content, 'http://arxiv\.org/abs/([\d\.]+v\d+)') | ForEach-Object { $_.Groups[1].Value -replace 'v\d+$','' } | Select-Object -Unique
    foreach ($id in ($ids | Select-Object -First 4)) {
      if ($axSeen.ContainsKey($id)) { continue }
      $axSeen[$id] = $true
      $f = Join-Path "$root\papers\arxiv" ("{0}.pdf" -f $id)
      try { Invoke-WebRequest -Uri "https://arxiv.org/pdf/$id" -OutFile $f -TimeoutSec 60 -UseBasicParsing; Write-Output "ARXOK $id" } catch { Write-Output "ARXFAIL $id" }
      Start-Sleep -Milliseconds 900
    }
  } catch { Write-Output "AXFAIL [$aq]: $($_.Exception.Message)" }
  Start-Sleep -Seconds 2
  $i++
}

# ---------- 4. Manifest ----------
$manifest | Export-Csv -Path (Join-Path $root 'metadata\manifest-ntrs.csv') -NoTypeInformation -Encoding UTF8
Write-Output ("DONE total_downloaded={0}" -f $global:count)
