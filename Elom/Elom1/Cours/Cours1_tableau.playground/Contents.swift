import UIKit

var str = "Hello, playground"

//Déclarer un tableau de chaine de caractères (String) et ajouter 3 fruits

var tableau = [String]()

tableau.append("Banane")
tableau.append("Fraise")
tableau.append("pomme")


//Afficher les 3 fruits avec une boucle for, while et repeat
//Exemple d'affichage : l'élément en position 1 est var index = 0
var index = 0

for fruit in tableau {
    
    print("l' élément en position \(index + 1) est \(fruit)")
    
    index = index + 1
}


// WHILE fait traitement tant que la condition est vrai
var index1 = 0

while index1 < tableau.count {
    
    print("l' élément en position \(index1 + 1) est \(tableau[index1])")
    
    index1 = index1 + 1
}

index1 = 0

// Reapear While Traitement une 1ére fois quoi qu'il se passe
repeat  {
    
    print("l' élément en position \(index1 + 1) est \(tableau[index1])")
    
    index1 = index1 + 1
    
} while index1 < tableau.count


//Déclarer un booléen trouve qui permet devra être à true si "oranges" est dans la liste des fruits et definir la position d'un élément du tableau

var trouver: Bool = false
let valeurRechercher = "Banane"

// Definir position d'un element en créant 2 variables
var position = -1 // Valeur qui n'existe pas dans le tableau -1
var index3 = 0 // On initialise toujours la variable que l'on veut incrémenter

for fruit in tableau {
    
    if fruit == valeurRechercher {
        
        trouver = true
        
        // Affectation de la valeur trouver dans la variable
        position = index3 + 1
    }
    
    // Incrémenter les valeurs du tableau
    index3 = index3 + 1
    
}

if trouver == true {
    
    print("La valeur rechercher est bien dans la liste en position \(position)")
    
} else {
    
    print("Valeur rechercher pas dans la liste")
}

// Optionnelle


var mot : String?

mot = "Jeudi"

if let mot1 = mot {
    
    print(mot1.count)
}

// print(mot!.count)



// Faire le même exercice sur un tableau de Personne, Personne est classe dont les propriétés sont
// nom et prénoms
