> [!TIP]
> # Powershell Remote control commands:


> [!IMPORTANT]
> First run Powershell as an Administrator:  
>>> Copy and paste the command below from the Run window. 
>>> ```` C:\WINDOWS\system32\runas.exe /profile /env /user:%userdomain%\a-%username% powershell ````

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







