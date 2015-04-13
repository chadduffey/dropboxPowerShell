#token is different than the token for the other samples because audit is a different right.
$token = 'Bearer token'

Write-Host
Write-Host "Audit Log:" -ForegroundColor Green
Write-Host

$body = '{}'

$report = Invoke-RestMethod -Uri https://api.dropbox.com/1/team/log/get_events -Body $body -ContentType application/json -Headers @{Authorization = $token } -Method Post

$report.events
