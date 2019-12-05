<# Author: Nikhil Mone
   email: nikhilmone7@gmail.com
   Disclaimer: Please use at your own risk ! #>

For ($i=1; $i -lt 5; $i++) {
  Write-Host $i; 
  $Password = [system.web.security.membership]::GeneratePassword(16,4); 
  $User = "welcome"+$i ; 
  <#Write-Host $Password; #>
  <#Write-Host $User; #>
  New-LocalUser $User -Password $Password -FullName "Developer"+$i -Description "This is a developer account"
  }

<# To delete the create users #>

<#For ($i=1; $i -lt 5; $i++) {Remove-LocalUser -Name "welcome"+$i}#>
