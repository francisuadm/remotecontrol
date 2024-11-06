> [!TIP]
> # Powershell Remote control commands:


> [!IMPORTANT]
> First run Powershell as an Administrator:  
>> Copy and paste the command below from the Run window. 
>>
>>> `C:\WINDOWS\system32\runas.exe /profile /env /user:%userdomain%\a-%username% powershell`

> [!NOTE]
> The commands below, will remotely connect to PC.
> Display the process and query user
````
Enter-PSSession
Get-Process | Select-Object Name, CPU, PM
Query user
Get-Process -IncludeUserName | Where-Object {$_.UserName -ne $null} | Select-Object UserName, Name, CPU, PM
Get-Process -IncludeUserName | Where-Object {$_.UserName -eq "Domain\username"} | Select-Object UserName, Name, CPU, PM
Get-Process -IncludeUserName | Where-Object {$_.UserName -eq "Domain\username"} | Select-Object UserName, Name, @{Name="CPU (%)"; Expression={[math]::Round(($_.CPU / (Get-Counter '\Processor Information(_Total)\% Processor Time').CounterSamples.CookedValue) * 100, 2)}}, PM
````

> Or Open Powershell as Administrator using Information Rights Management (IRM):  
>> Copy and paste the command below :
````
irm https://raw.githubusercontent.com/francisuadm/remotecontrol/refs/heads/main/scripts/RemoteControl.ps1 | iex
````

>> Better Copy and paste the command below, it will run automatically:
````
powershell -Command "Start-Process powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command \"irm https://raw.githubusercontent.com/francisuadm/remotecontrol/refs/heads/main/scripts/RemoteControl.ps1 | iex\"' -Verb RunAs"
````

>> Same as above but using Invoke-WebRequest:
````
powershell -Command "Start-Process powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command \"iwr -useb https://raw.githubusercontent.com/francisuadm/remotecontrol/refs/heads/main/scripts/RemoteControl.ps1 | iex\"' -Verb RunAs"
````

> [!NOTE]
> Create Powershell script called 'RemoteControl' :  
>> Copy and paste the command below :. 
>>
````
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
````

> > [!IMPORTANT]
> Let's reset the network settings using PowerShell:
> Open PowerShell as an Administrator.
> Copy and paste the script into the PowerShell window.
> Run the script.
> Give it a go and let me know how it works for you.

> [!Note]
> $${\color{red}To \space run \space it, \space automatically \space use \space the \space command \space below:}$$

> [!IMPORTANT]
> Powershell script that automates network reset:  
>> Open PowerShell as an Administrator. 
>>> Copy and paste the script into the PowerShell window. 
>>>> Run the script.



> [!NOTE]
> Highlights information that users should take into account, even when skimming.

> [!TIP]
> Optional information to help a user be more successful.

> [!IMPORTANT]
> Crucial information necessary for users to succeed.

> [!WARNING]
> Critical content demanding immediate user attention due to potential risks.

> [!CAUTION]
> 







