import UIKit

var str = "Hello, playground"


// Les données sont initialiser dans la fonction
func somme() {
    
    let a = 1
    let b = 5
    
    print("La somme de \(a) et \(b) = \(a + b)")
    
}

somme()


// Les données sont données en entrer de la fonctions
func somme1(a : Int, b : Int)     {
    
     print("La somme de \(a) et \(b) = \(a + b)")
}

somme1(a: 1, b: 5)

func somme2(a : Int, b : Int) -> Int {
    
    return a + b
}

print(somme2(a: 12, b: 3))

// Additionner la 1ére est derniére valeur du tableau
var tableau = [1, 3, 7]

tableau.count-1

print(somme2(a: tableau[0], b: tableau[2]))


