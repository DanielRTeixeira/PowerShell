###Example
    Load The Function From URL and Run Get-SID:
        IEX (New-Object System.Net.Webclient).DownloadString('https://raw.githubusercontent.com/DanielRTeixeira/PowerShell/master/SID/SID.ps1'); Get-SID


### Sample Output 

    S-1-5-21-312345612-1256085132-1900709958-500

Component | Definition         | Sample        |
----------|--------------------|---------------|
S         | Indicates that the string is a SID | S
R         | Revision level     | 1     
X         | Identifier authority value | 5 (NT Authority)
￼￼￼Y1-Y2-Yn-1| Domain identifier | 21-312345612-1256085132-1900709958
Yn        | RID  (Relative ID) | 500
