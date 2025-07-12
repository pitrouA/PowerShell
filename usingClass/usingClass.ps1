class Animal {
	[string]$nom
	[int]$age
	[int]$taille
	[int]$poids

	Animal() {}
	Animal([string]$nom) {$this.Init($nom)}
	Animal([string]$nom, [int]$age) {$this.Init($nom,$age)}

	hidden Init() { $this.Init("Jean-John") }
	hidden Init([string]$nom) { $this.Init($nom,10) }
 	hidden Init([string]$nom, [int]$age) {
		$this.nom = $nom
		$this.age = $age
  		$this.poids = 12
		$this.taille = 14
  	}

	[string] ToString() {
        	return $this.nom+" est un "+$this.GetType()+" qui pese "+$this.poids
    	}

	[void] manger() {
		echo("aaa")
    	}

}

class Chat : Animal {

	Chat([string]$nom) : base($nom) {
		$this.poids = 102;
	}

	[void] manger() {
        	$this.poids ++;
    	}
}

class Chien : Animal {

	Chien([string]$nom) : base($nom) {
		$this.poids = 200;
	}

	[void] manger() {
        	$this.poids += 5;
    	}
}

$animal = [Chat]::new("Garfield"),[Chien]::new("Oddie")

For($i=0 ; $i -lt 2 ; $i++) { 
 	echo($animal[$i].ToString());
	$animal[$i].manger();
	echo($animal[$i].ToString());
}