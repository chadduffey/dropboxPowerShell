#parameters:
$token = 'Bearer token'

Write-Host
Write-Host "Team Members:" -ForegroundColor Red
Write-Host

$teammembers = Invoke-RestMethod -Uri https://api.dropbox.com/1/team/members/list -Body "{}" -ContentType application/json -Headers @{
                Authorization = $token } -Method Post
$memberCount = 0

foreach ($member in $teammembers.members)
{
    $given_name = $teammembers.members.Item($memberCount).profile.given_name
    $surname = $teammembers.members.Item($memberCount).profile.surname
    $status = $teammembers.members.Item($memberCount).profile.status
    $member_id = $teammembers.members.Item($memberCount).profile.member_id
    $email = $teammembers.members.Item($memberCount).profile.email
    $external_id = $teammembers.members.Item($memberCount).profile.external_id
    $groups = $teammembers.members.Item($memberCount).profile.groups
    $admin = $teammembers.members.Item($memberCount).permissions.is_admin

    #display
    Write-Host "Name:" $given_name $surname -ForegroundColor Green
    Write-Host "Status:" $status
    Write-Host "Member_Id:" $member_id
    Write-Host "Email:" $email
    Write-Host "External_Id:" $external_id
    Write-Host "Groups:" $groups
    Write-Host "Admin:" $admin
    Write-Host 

    #$teammembers.members.Item($memberCount).permissions | fl
    $memberCount++
}