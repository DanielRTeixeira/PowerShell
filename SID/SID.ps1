function Get-SID {
  $objUser = New-Object System.Security.Principal.NTAccount($env:UserDomain, $env:UserName)
  $strSID = $objUser.Translate([System.Security.Principal.SecurityIdentifier])
  $strSID.Value
}
