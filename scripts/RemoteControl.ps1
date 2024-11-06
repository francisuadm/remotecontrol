# Clear the host display
Clear-Host

# Remove any existing PowerShell sessions
Get-PSSession | Remove-PSSession

# Clear the host display again
Clear-Host

# Display a message requiring admin access on PowerShell ISE
Write-Host " Require Admin access on Powershell ISE  "  -ForegroundColor White

# Display a message to prompt for the remote computer's IP and MAC address
Write-Host " To display the remote computer IP and mac Address:  "  -ForegroundColor White
Write-Host
Write-Host "[ Please enter the ComputerName of the machine: ] " -NoNewline -ForegroundColor Green
$computerName = Read-Host
Write-Host
Clear-Host
$Session = New-PSSession -Computer $computerName -ErrorAction SilentlyContinue
Enter-PSSession -Session $Session #-credential (get-credential) -ErrorAction SilentlyContinue