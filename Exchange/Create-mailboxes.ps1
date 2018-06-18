#Script for creating mailboxes and accounts based on CSV file.

add-pssnapin Microsoft.Exchange.Management.PowerShell.E2010
 
#Used as the default password for all new users. Use better logic if you need more security.

$DefaultPW = read-host "password" -AsSecureString
 
#Assume you have a csv with three fields: fname, lname, username
import-csv C:\path\your_file_users.csv | Foreach-object {
 
    $Fname = $_.FName
    $LName = $_.LName
    $DisplayName = $_.DisplayName
    $User = $_.Username
 
 
    New-Mailbox -UserPrincipalName $User@contoso.ru -Alias $User -Database "DB_Name" -Name $DisplayName -Password $DefaultPW -FirstName $FName -LastName $LName -DisplayName $DisplayName -ResetPasswordOnNextLogon $true
 
}
