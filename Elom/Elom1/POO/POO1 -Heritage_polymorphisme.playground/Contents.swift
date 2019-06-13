import UIKit

var str = "Hello, playground"


class Personne {
    
    var nom : String
    var prenom: String
    var dateNaissance : String
    var taille : Float
    
    init(nom : String, prenom : String, dateNaissance : String, taille : Float) {
        self.nom = nom
        self.prenom = prenom
        self.dateNaissance = dateNaissance
        self.taille = taille
        
    }
    
    // POLYMORPHISME : Même fonction avec des valeurs différentes
    func  display() {
        print("la personne s'appelle \(self.prenom), son nom est \(self.nom), sa date de naissance \(self.dateNaissance) et elle mesure \(self.taille)  ")
    }
    
    func display(type : String) {
        if type == nom {
            
            print("Nom \(self.nom)")
            
        } else if type == prenom {
            
            print("Prenom \(self.prenom)")
            
        } else {
            
            print("Inconnu")
        }
    }
    
    func age() -> Int {
        
       return 2019 - Int(self.dateNaissance)!
        
    }
    
    func display(age : Int) -> Bool {
        
        if self.age() > age {
            
            return true
            
        }
        return false
    }
}

let personne1 = Personne(nom: "Gerard", prenom: "Poil", dateNaissance: "1987", taille: 1.67)

personne1.display()
personne1.display(type: "jjjfkf")
personne1.age()


// Héritage

class Employer : Personne {
    
    var salaire : Double
    
    init(salaire : Double, nom : String, prenom : String, dateNaissance : String, taille : Float) {
        
        self.salaire = salaire
        
        super.init(nom: nom, prenom: prenom, dateNaissance: dateNaissance, taille: taille)
    }
    
    override func display() {
        
        print("Le salarié s'appelle \(self.prenom), son nom est \(self.nom), sa date de naissance \(self.dateNaissance) et elle mesure \(self.taille) Salaire : \(self.salaire) ")
    }
    
}

let employer1 = Employer(salaire: 3221.99, nom: "TRRFC", prenom: "HHJKK", dateNaissance: "1980", taille: 11.98)

print(employer1.salaire)
employer1.display()
employer1.age()


/*

 Exercice Heritage et Polymorphisme
 
 Soit les classes suivantes:
 
 - une classe Personne qui comporte trois champs, nom, prénom et date de naissance (tous de type chaînes de caractères).
 Cette classe comporte un constructeur pour permettre d'initialiser les données.
 Elle comporte également une méthode polymorphe Afficher pour afficher les données de chaque personne.
 L'affichage se présente comme suit : "Personne : nom = XXXX, prenom = YYYYY"
 
 - une classe Employé qui dérive de la classe Personne, avec en plus une propriété Salaire (type réel),
 un constructeur et la redéfinition de la méthode Afficher.
 
 - une classe Chef qui dérive de la classe Employé, avec en plus un champ Service (type chaîne de caractères),
 un constructeur et la redéfinition de la méthode Afficher.
 
 - une classe Directeur qui dérive de la classe Chef, avec en plus un champ Société (type chaîne de caractères),,
 un constructeur et la redéfinition de la méthode Afficher.
 
 Travail à faire:
 
 Ecrire les classe Personne, Employé, Chef et Directeur.
 Créez un programme de test qui comporte tableau de huit personnes avec cinq employés, deux chefs et un directeur
 (8 références de la classe Personne dans lesquelles ranger 5 instances de la classe Employé, 2 de la classe Chef et 1 de la classe Directeur).
 
 Affichez l'ensemble des éléments du tableau à l'aide de for.
 
 Affichez l'ensemble des éléments du tableau à l'aide de map.
 
 */
