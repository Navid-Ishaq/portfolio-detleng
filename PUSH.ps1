$ErrorActionPreference = 'Stop'
$source = $PSScriptRoot
$publish = 'D:\DETLENG2\portfolio-detleng-publish'
$remote = 'https://github.com/Navid-Ishaq/portfolio-detleng.git'
$files = @('index.html','styles.css','app.js','academic-transcript.png','favicon.ico','CNAME','.nojekyll','README.md','TESTING.md','PUSH.ps1')
foreach ($file in $files) { if (!(Test-Path -LiteralPath (Join-Path $source $file))) { throw "Missing source: $file" } }
if (!(Test-Path -LiteralPath $publish)) { git clone $remote $publish; if ($LASTEXITCODE -ne 0) { throw 'Clone failed.' } }
Set-Location -LiteralPath $publish
$origin = git remote get-url origin
if ($LASTEXITCODE -ne 0 -or $origin -ne $remote) { throw 'Unexpected repository.' }
$changes = git status --porcelain
if ($LASTEXITCODE -ne 0) { throw 'Could not read status.' }
if ($changes) { throw 'Publish checkout has uncommitted changes. Review first.' }
git checkout main
if ($LASTEXITCODE -ne 0) { throw 'Could not select main.' }
git pull --rebase origin main
if ($LASTEXITCODE -ne 0) { throw 'Pull failed. Stop here.' }
foreach ($file in $files) { Copy-Item -LiteralPath (Join-Path $source $file) -Destination $publish -Force }
git add -- $files
if ($LASTEXITCODE -ne 0) { throw 'Staging failed.' }
git diff --cached --quiet
$diffCode=$LASTEXITCODE
if ($diffCode -eq 1) { git commit -m "Build employer portfolio focused on AI Support and AI Associate"; if ($LASTEXITCODE -ne 0) { throw 'Commit failed.' } } elseif ($diffCode -ne 0) { throw 'Git diff failed.' }
git push origin main
if ($LASTEXITCODE -ne 0) { throw 'Push failed.' }
Write-Host 'Portfolio push complete!' -ForegroundColor Green
