#parameters:
$token = 'Bearer token'

#Same as get_info, member_id, email and external id are all valid user identifiers. Examples:
#$body = '{"member_id":"dbmid:AADSk2pOSx0ZGBqR0X8rcACqxIkmiwpFf3c"}'
#$body = '{"emails":"chad@dbtests.info", "dom@dbtestsw.info" }'
#$body = '{"external_id":"AD-SID-12345678910-0"}'

$body = '{"emails":["chad@dbtests.info", "dom@dbtests.info"]}'

$memberInfo = Invoke-RestMethod -Uri https://api.dropbox.com/1/team/members/get_info_batch `
                    -Body $body -ContentType application/json -Headers @{ Authorization = $token } -Method Post

#example of what the object will hold:
$memberInfo.'chad@dbtests.info'.profile
$memberInfo.'dom@dbtests.info'.profile