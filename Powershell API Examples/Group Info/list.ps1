#parameters:
$token = 'Bearer token'

Write-Host "Listing out the groups on the team:" -ForegroundColor Green

$myGroups = Invoke-RestMethod -Uri https://api.dropbox.com/1/team/groups/list -Body "{}" -ContentType application/json -Headers @{ Authorization = $token } -Method Post