function MsgBox ($msg, $title) {
[System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[Windows.Forms.MessageBox]::Show("$msg", "$title", [Windows.Forms.MessageBoxButtons]::OK, [Windows.Forms.MessageBoxIcon]::Error)
}
