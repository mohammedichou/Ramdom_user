//
//  FirstViewController.swift
//  Random_Person
//
//  Created by mohammed ichou on 04/12/2018.
//  Copyright © 2018 mohammed ichou. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var img_profil: UIImageView!
    @IBOutlet weak var label_name: UILabel!
    @IBOutlet weak var label_birthday: UILabel!
    @IBOutlet weak var viewgris: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tabbar = tabBarController as! MyTabViewController
        label_name.text = tabbar.Perso.nom + " " + tabbar.Perso.prenom
        label_birthday.text = tabbar.Perso.age
        if let url = NSURL(string: tabbar.Perso.urlimg){
            if let data = NSData(contentsOf: url as URL){
                img_profil.image = UIImage(data: data as Data)
                img_profil.layer.cornerRadius = img_profil.frame.width/2
                img_profil.layer.masksToBounds = true
                img_profil.layer.borderWidth = 1
                img_profil.layer.borderColor = UIColor.black.cgColor
                
            }
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let tabbar = tabBarController as! MyTabViewController
        label_name.text = tabbar.Perso.nom + " " + tabbar.Perso.prenom
        label_birthday.text = tabbar.Perso.age
        if let url = NSURL(string: tabbar.Perso.urlimg){
            if let data = NSData(contentsOf: url as URL){
                img_profil.image = UIImage(data: data as Data)
                img_profil.layer.cornerRadius = img_profil.frame.width/2
                img_profil.layer.masksToBounds = true
                img_profil.layer.borderWidth = 1
                img_profil.layer.borderColor = UIColor.black.cgColor
                
            }
        }
        print(tabbar.Perso.urlimg)
        
        
    }
    
    @IBAction func ChangePerso(_ sender: Any) {
        let tabbar = tabBarController as! MyTabViewController
        tabbar.newPerso()
        label_name.text = tabbar.Perso.nom + " " + tabbar.Perso.prenom
        label_birthday.text = tabbar.Perso.age
        if let url = NSURL(string: tabbar.Perso.urlimg){
            if let data = NSData(contentsOf: url as URL){
                img_profil.image = UIImage(data: data as Data)
                img_profil.layer.cornerRadius = img_profil.frame.width/2
                img_profil.layer.masksToBounds = true
                img_profil.layer.borderWidth = 1
                img_profil.layer.borderColor = UIColor.black.cgColor
                
            }
        }
    }
    
    
    

}

