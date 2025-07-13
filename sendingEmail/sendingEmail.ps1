$From = "bluer5204@gmail.com"
$To = "uglyvanmchideous@gmail.com"
$Port = 587
$SMTPServer = "smtp.gmail.com"
$SecurePassword = Read-Host "Saisir le mdp pour bluer" -AsSecureString
$Username = "bluer5204"
$Credentials = New-Object System.Management.Automation.PsCredential($Username, $SecurePassword)
$Subject = "Test"
$Body = "Bonjour, <br><br> Ceci est un texte de remplissage<br><br> Biz !" 

Send-MailMessage -From $From -To $To -Subject $Subject -Body $Body -SmtpServer $SMTPServer -Credential $Credentials -Port $Port -BodyAsHtml