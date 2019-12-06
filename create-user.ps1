<# Author: Nikhil Mone
   email: nikhilmone7@gmail.com
   Disclaimer: Please use at your own risk ! #>

For ($i=1; $i -lt 11; $i++) {
  Write-Host $i; 
  $Password = [system.web.security.membership]::GeneratePassword(16,4); 
  Write-Host $Password;
  $SecurePassword = ConvertTo-SecureString $Password -AsPlainText -Force;
  $User = "JBOR"+$i ; 
  $name = "BackendDeveloper"+$i;
  
  <#Write-Host $User; #>
  New-LocalUser $User -Password $SecurePassword -FullName $name -Description "This is a backend developer account"
  }

<# To delete the create users #>

<#For ($i=1; $i -lt 11;$i++){$uname = "JBOR"+$i; Remove-LocalUser -Name $uname}#>

