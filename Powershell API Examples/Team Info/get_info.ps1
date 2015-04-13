#parameters:
$token = 'Bearer token'

write-host
write-host "Basic DfB Team Information:" -foregroundcolor Green
Invoke-RestMethod -Uri https://api.dropbox.com/1/team/get_info -Body "{}" -ContentType application/json -Headers @{
    Authorization = $token } -Method Post | fl