#parameters:
$token = 'Bearer token'

$body = '{"group_name":["Chess Players"]}'

Write-Host "Adding a group:" -ForegroundColor Green

$newGroup = Invoke-RestMethod -Uri https://api.dropbox.com/1/team/groups/create -Body $body `
            -ContentType application/json -Headers @{ Authorization = $token } -Method Post

$newGroup