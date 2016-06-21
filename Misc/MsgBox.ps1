function MsgBox ($msg) {
[System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[System.Windows.Forms.Messagebox]::Show("$msg"), [Windows.Forms.MessageBoxIcon]::Error)
}
