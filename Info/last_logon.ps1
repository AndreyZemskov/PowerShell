Get-ADComputer -Identity UserName

# A list PC to last logon
# Get-ADComputer -Filter * -Properties * | FT Name, LastLogonDate -Autosize | Export-CSV D:\last_logon.csv -NoTypeInformation -Encoding utf8

# Ctreate a variable with a date 
# $date_with_offset= (Get-Date).AddDays(-30)

# Filter by date
# Get-ADComputer  -Properties LastLogonDate -Filter {LastLogonDate -lt $date_with_offset } | Sort LastLogonDate | FT Name, LastLogonDate -Autosize