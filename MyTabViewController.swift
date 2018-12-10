//
//  MyTabViewController.swift
//  Random_Person
//
//  Created by mohammed ichou on 05/12/2018.
//  Copyright © 2018 mohammed ichou. All rights reserved.
//

import UIKit

class MyTabViewController: UITabBarController {
    var Perso = Personne(nom: "", prenom: "", age: "", urlimg: "", email: "", adr:Adresse(street: "", city: "", state: "", latitude: 0.0, longitude: 0.0))
    override func viewDidLoad() {
        super.viewDidLoad()
        Perso = newPerso()!
        // Do any additional setup after loading the view.
    }
    
    func newPerso()->Personne?{
        print("New Perso")
            do {
                let url = NSURL(string: "https://api.randomuser.me/")
                let text:NSString = try NSString(contentsOf: url! as URL , usedEncoding: nil)
                let  jsonData = text.data(using: 4)
                let jsonResult: NSDictionary? = try JSONSerialization.jsonObject(with: jsonData!) as? NSDictionary
                    if let jsonResult = jsonResult{
                    // print("JsonRESULT est bien convertit")
                    let test = jsonResult["results"]! as! NSArray
                    let test1 = test[0] as! NSDictionary
                    let test2 = test1["name"] as! NSDictionary
                    let name1 = test2["first"] as! NSString
                    let lastname1 = test2["last"] as! NSString
                    let location = test1["location"] as! NSDictionary
                    let coor = location["coordinates"] as! NSDictionary
                    let latitude1 = (coor["latitude"] as! NSString).doubleValue
                    let longitude1 = (coor["longitude"] as! NSString).doubleValue
                    let city = location["city"] as! NSString
                    let email = test1["email"] as! NSString
                    let picture = test1["picture"] as! NSDictionary
                    let urlimg = picture["large"] as! NSString
                    let registred = test1["registered"] as! NSDictionary
                    let birthday = registred["date"] as! NSString
                    let street1 = location["street"] as! NSString
                    let state1 = location["state"] as! NSString
                    //let postcode1 = location["postcode"] as! NSInteger
                    //let phone = test1["phone"] as! NSString
                        let adres = Adresse(street: String(street1), city: String(city), state: String(state1),latitude: Double(latitude1), longitude: Double(longitude1))
                    Perso.nom = String(name1)
                    Perso.prenom = String(lastname1)
                    Perso.age = String(birthday)
                    Perso.urlimg = String(urlimg)
                        Perso.adr = Adresse(street: String(street1), city: String(city), state: String(state1),latitude:Double(latitude1) , longitude: Double(longitude1))
                        let m:Personne = Personne(nom: String(name1), prenom: String(lastname1), age: String(birthday), urlimg: String(urlimg), email:String(email), adr:adres)
                        print(adres.latitude)
                        print(adres.longitude)
                    return m
                
                }
            
            
        } catch {
            print("error de conversion JSON")
        }
        return nil
    }
    
    
}
