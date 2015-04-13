#parameters:
$token = 'Bearer token'

$body = '{"group_ids":["",""]}'

Write-Host "Listing out the groups on the team:" -ForegroundColor Green

$myGroups = Invoke-RestMethod -Uri https://api.dropbox.com/1/team/groups/get_info -Body $body -ContentType application/json -Headers @{ Authorization = $token } -Method Post