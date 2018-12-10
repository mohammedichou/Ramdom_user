//
//  Personne.swift
//  Random_Person
//
//  Created by mohammed ichou on 05/12/2018.
//  Copyright © 2018 mohammed ichou. All rights reserved.
//

import Foundation

class Personne {
    
    var nom: String
    var prenom: String
    var age: String
    var urlimg: String
    var email: String
    var adr: Adresse
    
    
    init(nom:String, prenom:String, age:String,urlimg:String, email:String,adr:Adresse) {
        self.nom=nom
        self.prenom=prenom
        self.age=age
        self.urlimg = urlimg
        self.adr = adr
        self.email = email
    }
    
    
    
}
