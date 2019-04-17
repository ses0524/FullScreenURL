$Shell = New-Object -ComObject ("WScript.Shell")
$URL = $Shell.CreateShortcut("C:\Users\Public\Desktop\URL.lnk")
$URL.TargetPath = ("C:\Program Files\Internet Explorer\iexplore.exe")
$URL.Arguments = "-k https://www.google.com";
$URL.Save()

Copy-Item "C:\Users\Public\Desktop\URL.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
