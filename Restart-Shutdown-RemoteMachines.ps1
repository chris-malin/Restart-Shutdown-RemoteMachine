$password = ConvertTo-SecureString “YourPlainTextPassword” -AsPlainText -Force
$Cred = New-Object System.Management.Automation.PSCredential (“YourRemoteUserName”, $password)

[int]$xMenuChoiceA = 0
while ( $xMenuChoiceA -lt 1 -or $xMenuChoiceA -gt 10 ){
Write-host "RESTART"
Write-host "1. Restart HostNameOrIP"
Write-host "2. Restart HostNameOrIP"
Write-host "3. Restart HostNameOrIP"
Write-host "4. Restart HostNameOrIP"
Write-host "5. Restart HostNameOrIP"
Write-host ""
Write-host "SHUTDOWN"
Write-host "6. Shutdown HostNameOrIP"
Write-host "7. Shutdown HostNameOrIP"
Write-host "8. Shutdown HostNameOrIP"
Write-host "9. Shutdown HostNameOrIP"
Write-host "10. Shutdown Other"
Write-host ""
[Int]$xMenuChoiceA = read-host "Please enter an option 1 to 10..." }
Switch( $xMenuChoiceA ){
  1{Restart-Computer -ComputerName HostNameOrIP -Credential $Cred -Force}
  2{Restart-Computer -ComputerName HostNameOrIP -Credential $Cred -Force}
  3{Restart-Computer -ComputerName HostNameOrIP -Credential $Cred -Force}
  4{Restart-Computer -ComputerName HostNameOrIP -Credential $Cred -Force}
  5{Restart-Computer -ComputerName (Read-Host "ComputerName") -Credential $Cred -Force}
  6{Stop-Computer -ComputerName HostNameOrIP -Credential $Cred -Force}
  7{Stop-Computer -ComputerName HostNameOrIP -Credential $Cred -Force}
  8{Stop-Computer -ComputerName HostNameOrIP -Credential $Cred -Force}
  9{Stop-Computer -ComputerName HostNameOrIP -Credential $Cred -Force}
  10{Stop-Computer -ComputerName (Read-Host "ComputerName") -Credential $Cred -Force}
#default{<#run a default action or call a function here #>}
}
