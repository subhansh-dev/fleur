$ErrorActionPreference = 'Continue'
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$dst = 'C:\Users\Admin\desktop\spaceapps-prep\research\papers\arxiv'
$ua = @{ 'User-Agent' = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) SpaceApps2026-Research/1.0' }

# 1. Verify unknown title
try {
  $meta = Invoke-RestMethod -Uri 'http://export.arxiv.org/api/query?id_list=2403.01220' -TimeoutSec 30
  $e = ([xml]($meta)).feed.entry
  Write-Output ('VERIFY 2403.01220 | ' + ($e.title -replace '\s+', ' '))
} catch { Write-Output ('VERIFYFAIL ' + $_.Exception.Message) }

# 2. Download high-value extras
$want = @{ '2406.10833' = 'scientific-llm-survey'; '2208.10099' = 'text-to-sql-survey'; '2507.10897' = 'llmatch-schema-matching'; '2012.08105' = 'schema-extraction-semi-structured' }
foreach ($k in $want.Keys) {
  $f = Join-Path $dst ('{0}_{1}.pdf' -f $k, $want[$k])
  try {
    Invoke-WebRequest -Uri ('https://arxiv.org/pdf/' + $k) -OutFile $f -Headers $ua -TimeoutSec 60 -UseBasicParsing
    Write-Output ('OK ' + $k)
  } catch { Write-Output ('FAIL ' + $k + ' : ' + $_.Exception.Message) }
  Start-Sleep -Milliseconds 900
}
Write-Output 'EXTRAS DONE'
