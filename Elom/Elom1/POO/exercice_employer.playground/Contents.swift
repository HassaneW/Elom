import UIKit

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

class Personne {
    
    var nom : String
    var prenom : String
    var dateNaissance : String
    
    init(nom : String, prenom : String, dateNaissance : String) {
        self.nom = nom
        self.prenom = prenom
        self.dateNaissance = dateNaissance
    }
    
    func display()  {
        print("Personne : nom = \(self.nom), prenom = \(self.prenom) Date naissance = \(self.dateNaissance)")
    }
    
}


class Employer : Personne {
    
    var salaire : Double
    
    init (salaire : Double, nom: String, prenom: String, dateNaissance: String) {
        
        self.salaire = salaire
        
        super.init (nom: nom, prenom: prenom, dateNaissance: dateNaissance)
    }
    
    override func display() {
        print("Employer : nom = \(self.nom), prenom = \(self.prenom), salaire = \(self.salaire)€")
    }
}


class Chef : Employer {
    
    var services : String
    
    init(services : String, salaire: Double, nom: String, prenom: String, dateNaissance: String) {
        self.services = services
        
        super.init(salaire: salaire, nom: nom, prenom: prenom, dateNaissance: dateNaissance)
    }
    
    override func display() {
        
        print("Chef : nom = \(self.nom), prenom = \(self.prenom), salaire = \(self.salaire)€, services = \(self.services)")
    }
}


class Directeur : Chef {
    
    var societe : String
    
    init(societe : String, services: String, salaire: Double, nom: String, prenom: String, dateNaissance: String) {
        
        self.societe = societe
        
        super.init(services: services, salaire: salaire, nom: nom, prenom: prenom, dateNaissance: dateNaissance)
    }
    
    override func display() {
        print("Directeur : nom = \(self.nom), prenom = \(self.prenom), salaire = \(self.salaire)€, services = \(self.services), societe = \(self.societe)")
    }
}


let employer1 = Employer(salaire: 1200, nom: "AHJK", prenom: "AZE", dateNaissance: "1988")
let employer2 = Employer(salaire: 1300, nom: "BHJK", prenom: "QSD", dateNaissance: "1989")
let employer3 = Employer(salaire: 1400, nom: "CHJK", prenom: "WXC", dateNaissance: "1990")
let employer4 = Employer(salaire: 1500, nom: "DHJK", prenom: "BNJ", dateNaissance: "1991")
let employer5 = Employer(salaire: 1600, nom: "EHJK", prenom: "OIU", dateNaissance: "1992")
let chef1 = Chef(services: "BT", salaire: 2100, nom: "TRE", prenom: "AZS", dateNaissance: "2000")
let chef2 = Chef(services: "TY", salaire: 2200, nom: "YUT", prenom: "LOI", dateNaissance: "2001")
let directeur1 = Directeur(societe: "TOTAL", services: "HY", salaire: 5000, nom: "esr", prenom: "tui", dateNaissance: "2002")


 var tableauEmployer = [Personne]()

tableauEmployer.append(employer1)
tableauEmployer.append(employer2)
tableauEmployer.append(employer3)
tableauEmployer.append(employer4)
tableauEmployer.append(employer5)
tableauEmployer.append(chef1)
tableauEmployer.append(chef2)
tableauEmployer.append(directeur1)
print(tableauEmployer.count)


for employer in tableauEmployer {
  employer.display()
}

// Map Employer

//  Exemple MAP ?

var tableau = [1, 3, 5, 9, 98, 87]

//  Exemple Tableau Map
tableau.map { element in
    print(element)
}


// Ajouter + 5 à chaque élément

tableau.map { print ($0 + 5 )}


