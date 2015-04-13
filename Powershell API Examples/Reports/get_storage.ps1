#parameters:
$token = 'Bearer token'

Write-Host
Write-Host "Report:" -ForegroundColor Red
Write-Host

$body = '{}'

$report = Invoke-RestMethod -Uri https://api.dropbox.com/1/team/reports/get_storage -Body $body -ContentType application/json -Headers @{Authorization = $token } -Method Post

$report