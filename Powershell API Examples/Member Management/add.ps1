#parameters:
$token = 'Bearer token'

#user detail to add - modify this...
$email = "ben@dbtests.info"
$member_given_name = "Ben"
$member_surname = "Beefcake"
$member_external_id = "AD-SID-12345-123456" #note, we would do this in conjustion with get-admember to obtain real sid in production
$send_welcome_email = "true"

$body = '{"member_email":"' + $email +'", "member_given_name": "' + $member_given_name + '", "member_surname": "' + $member_surname + '", "send_welcome_email": '+ $send_welcome_email +' }'

Write-Host
Write-Host "Adding a New User:" $email -ForegroundColor Green
 
$newUser = Invoke-RestMethod -Uri https://api.dropbox.com/1/team/members/add -Body $body -ContentType application/json -Headers @{
    Authorization = $token } -Method Post

Write-Host
Write-host "Added:"
$newUser.profile 
