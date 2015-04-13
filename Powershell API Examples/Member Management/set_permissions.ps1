#parameters:
$token = 'Bearer token'

#member to make or revoke admin access:
$body = '{"member_id":"dbmid:AADSk2pOSx0ZGBqR0X8rcACqxIkmiwpFf3c", "new_is_admin" : true }'

Write-Host
Write-Host "Modifying Permissions:" -ForegroundColor Green
$modUser = Invoke-RestMethod -Uri https://api.dropbox.com/1/team/members/set_permissions -Body $body -ContentType application/json -Headers @{
    Authorization = $token } -Method Post

Write-Host 
Write-Host "Persmissions Modified for:" $modUser.member_id
Write-Host "Is Admin:" $modUser.is_admin
Write-Host