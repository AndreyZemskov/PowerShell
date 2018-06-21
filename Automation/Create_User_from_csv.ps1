$users = Import-Csv C:\Users\Administrator\Desktop\users2.csv
$password = Read-Host -AsSecureString
foreach ($user in $users) {New-ADUser $user.name -EmailAddress.email -AccountPassword $password -Enabled $true}