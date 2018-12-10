//
//  Adresse.swift
//  Random_Person
//
//  Created by mohammed ichou on 09/12/2018.
//  Copyright © 2018 mohammed ichou. All rights reserved.
//

import Foundation


class Adresse {
    var street: String
    var city: String
    var state: String
    var latitude: Double
    var longitude: Double
    
    init(street:String, city: String, state: String, latitude: Double, longitude: Double) {
        self.street = street
        self.city = city
        self.state = state
        self.latitude = latitude
        self.longitude = longitude
    }
    
    
}
