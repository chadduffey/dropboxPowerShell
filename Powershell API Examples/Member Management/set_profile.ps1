#parameters:
$token = 'Bearer token'

#member_id or external_id is required - example:
$body = '{"member_id":"dbmid:AADSk2pOSx0ZGBqR0X8rcACqxIkmiwpFf3c", "new_external_id" : "S-1-5-21-1528997282-2455001097-2829102238-1000" }'


Write-Host "Modifying external Id:" -ForegroundColor Green
$modUser = Invoke-RestMethod -Uri https://api.dropbox.com/1/team/members/set_profile -Body $body -ContentType application/json -Headers @{
    Authorization = $token } -Method Post

Write-Host 
Write-Host "External ID is now:" $modUser.external_id
Write-Host