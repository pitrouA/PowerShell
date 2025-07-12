$var = Get-ChildItem -Path . -Recurse -Name
$reg = ".txt"

For($i=0 ; $i -lt $var.length ; $i++) { 
	if($var[$i] -match $reg){
		$lignesFichier = Get-Content -Path ($var[$i])

		if($lignesFichier.GetType().Name -eq "String"){
			echo($lignesFichier);
		}elseif($lignesFichier.GetType().Name -eq "Object[]"){
			For($j=0 ; $j -lt $lignesFichier.length ; $j++) { 
				echo($lignesFichier[$j]);
			}
		}
	}
}