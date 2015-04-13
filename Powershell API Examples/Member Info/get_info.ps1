#parameters:
$token = 'Bearer token'

#member_id, email and external id are all valid user identifiers. Examples:
#$body = '{"member_id":"dbmid:AADSk2pOSx0ZGBqR0X8rcACqxIkmiwpFf3c"}'
#$body = '{"email":"chad@dropbox.com"}'
#$body = '{"external_id":"AD-SID-12345678910-0"}'

$body = '{"member_id":"dbmid:AADSk2pOSx0ZGBqR0X8rcACqxIkmiwpFf3c"}'


Write-Host
Write-Host "Information for:" $user -ForegroundColor Red
Write-Host

$memberInfo = Invoke-RestMethod -Uri https://api.dropbox.com/1/team/members/get_info `
                -Body $body -ContentType application/json -Headers @{ Authorization = $token } -Method Post
$memberInfo.profile