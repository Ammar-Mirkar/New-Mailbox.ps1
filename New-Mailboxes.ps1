#Create bulk mailboxes in onprem, Kindly test the script before running it in production.

$Password=Read-Host “Enter Password” –AsSecureString
 
Import-CSV “C:\Users\mailboxes.csv” | ForEach {New-Mailbox -Alias $_.alias -FirstName $_.first -LastName $_.last -Name $_.name -userPrincipalName $_.upn -Database “database name here” -OrganizationalUnit "contoso.com/Region" -Password $Password}
