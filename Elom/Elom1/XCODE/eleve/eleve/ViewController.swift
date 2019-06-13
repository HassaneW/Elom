//
//  ViewController.swift
//  eleve
//
//  Created by WANDIANGA on 20/05/2019.
//  Copyright © 2019 Hassane WANDIANGA. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var prenom: UITextField!
    
    @IBOutlet weak var age: UITextField!
    
    
    @IBOutlet weak var moyenne: UITextField!
    
    @IBOutlet weak var libelle: UILabel!
    
    
    @IBOutlet weak var bouton: UIButton!
    
    @IBAction func click(_ sender: Any) {
        
        let nameEleve = name.text
        let prenomEleve = prenom.text
        let ageEleve = age.text
        let moyenneEleve = moyenne.text
        let eleve = Eleve(firstNameParameters: prenomEleve!, lastnameParameters: nameEleve!, averageParameters: 10, ageParameters: 10)
        
        libelle.text = eleve.nameEleve()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


