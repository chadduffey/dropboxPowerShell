#parameters:
$token = 'Bearer token'

#user to remove
$body = '{"member_id":"dbmid:AABOx2M1KWPHBp6T0y3I4s9B7ZEhQylkISI" }'

Write-Host
Write-Host "Removing User from Dropbox for Business" -ForegroundColor Yellow
Write-Host

Write-Host "This operation cannot be reversed. Are you sure you want to do this? (Y to continue):" -ForegroundColor Red
$input = Read-Host

if ($input -notmatch "Y")
{
    break
}

<#Invoke-RestMethod -Uri https://api.dropbox.com/1/team/members/remove -Body $body -ContentType application/json -Headers @{
    Authorization = $token } -Method Post #>

Write-Host "User would have been removed. (This is commented out in the script)."
