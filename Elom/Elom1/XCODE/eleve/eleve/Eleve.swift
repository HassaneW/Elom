//
//  Eleve.swift
//  eleve
//
//  Created by WANDIANGA on 20/05/2019.
//  Copyright © 2019 Hassane WANDIANGA. All rights reserved.
//

import Foundation

class Eleve {
    
    var firstname : String = ""
    var lastName : String = ""
    var average : Int = 0
    var age : Int = 0
    
    init(firstNameParameters : String, lastnameParameters : String, averageParameters :Int, ageParameters : Int) {
        self.firstname = firstNameParameters
        self.lastName = lastnameParameters
        self.average = averageParameters
        self.age = ageParameters
        
    }
    
    func nameEleve() -> String {
        return "FirstName:  \(firstname), lastname: \(lastName), average: \(average), age: \(age) "
    }
}

