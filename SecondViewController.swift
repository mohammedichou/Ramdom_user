//
//  SecondViewController.swift
//  Random_Person
//
//  Created by mohammed ichou on 04/12/2018.
//  Copyright © 2018 mohammed ichou. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class SecondViewController: UIViewController, MKMapViewDelegate{
    
    @IBOutlet weak var img_profil: UIImageView!
    @IBOutlet weak var label_email: UILabel!
    @IBOutlet weak var map_adresse: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tabbar = tabBarController as! MyTabViewController
        label_email.text = tabbar.Perso.email
        if let url = NSURL(string: tabbar.Perso.urlimg){
            if let data = NSData(contentsOf: url as URL){
                img_profil.image = UIImage(data: data as Data)
                img_profil.layer.cornerRadius = img_profil.frame.width/2
                img_profil.layer.masksToBounds = true
                img_profil.layer.borderWidth = 1
                img_profil.layer.borderColor = UIColor.black.cgColor
                
            }
        }
        let point = annot(title: "Mon adresse", locationName: "locationname", discipline: "nil", coordinate: CLLocationCoordinate2D(latitude: tabbar.Perso.adr.latitude, longitude: tabbar.Perso.adr.longitude))
        map_adresse.addAnnotation(point)
        map_adresse.setRegion(point.region, animated: true)
        map_adresse.layer.borderWidth = 1
        

       
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let tabbar = tabBarController as! MyTabViewController
        label_email.text = tabbar.Perso.email
        if let url = NSURL(string: tabbar.Perso.urlimg){
            if let data = NSData(contentsOf: url as URL){
                img_profil.image = UIImage(data: data as Data)
                img_profil.layer.cornerRadius = img_profil.frame.width/2
                img_profil.layer.masksToBounds = true
                img_profil.layer.borderWidth = 1
                img_profil.layer.borderColor = UIColor.black.cgColor
                let point = annot(title: "Mon adresse", locationName: "locationname", discipline: "nil", coordinate: CLLocationCoordinate2D(latitude: tabbar.Perso.adr.latitude, longitude: tabbar.Perso.adr.longitude))
                map_adresse.addAnnotation(point)
                map_adresse.setRegion(point.region, animated: true)
                map_adresse.layer.borderWidth = 1
                
            }
        }
        
    }
    
    


}

