# Password change information
# Get-ADUser UserName -properties PasswordExpired, PasswordLastSet, PasswordNeverExpires 

# All accounts
# Get-ADUser -Filter {SamAccountName -like "*"} | Measure-Object
 
# Active accounts in AD
# Get-ADUser -Filter {Enabled -eq "True"} | Select-Object SamAccountName,Name,Surname,GivenName | Format-Table  # | Export-Csv -NoTypeInformation -Encoding utf8 -delimiter "," D:\export_ad_list.csv

# List of accounts with expired password
# Get-ADUser -filter {Enabled -eq $True} -properties passwordExpired | where {$_.PasswordExpired}
