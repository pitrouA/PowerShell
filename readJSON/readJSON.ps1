$data = Get-Content .\data.json -Raw | ConvertFrom-Json 

Set-PSReadLineOption -Colors @{
	"Parameter"= $data.colors[0].hex
	"Command"= $data.colors[1].hex
	"String" = $data.colors[2].hex
}

Write-Host "les couleurs ont changées !"