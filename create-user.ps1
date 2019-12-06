<# Author: Nikhil Mone
   email: nikhilmone7@gmail.com
   Disclaimer: Please use at your own risk ! #>

For ($i=1; $i -lt 11; $i++) {
  Write-Host $i; 
  $Password = [system.web.security.membership]::GeneratePassword(16,4); 
  Write-Host $Password;
  $SecurePassword = ConverTo-SecureString $Password -AsPlainText -Force;
  $User = "welcome"+$i ; 
  
  <#Write-Host $User; #>
  New-LocalUser $User -Password $SecurePassword -FullName "Developer"+$i -Description "This is a developer account"
  }

<# To delete the create users #>

<#For ($i=1; $i -lt 5; $i++) {$user = "welcome"+$i; Remove-LocalUser -Name $user#>
