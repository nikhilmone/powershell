<# Author: Nikhil Mone
   email: nikhilmone7@gmail.com
   Disclaimer: Please use at your own risk ! #>
   
<# Requirement:

   To create 10 users as JBOR1, JBOR2 .... JBOR10 on a Windows Machine, with random and unique passwords.
   
#>

Add-Type -AssemblyName System.web;
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

<# To delete the created users uncomment below line #>

<#For ($i=1; $i -lt 11;$i++){$uname = "JBOR"+$i; Remove-LocalUser -Name $uname}#>
