//
//  SecondViewController.swift
//  MoveIt Music
//
//  Created by Grace Cuenca on 8/16/16.
//  Copyright © 2016 GWC. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class SecondViewController: UIViewController {
    
    @IBOutlet weak var Map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let location = CLLocationCoordinate2DMake(40.757558, -73.986053)
        
        let span = MKCoordinateSpanMake(0.02, 0.02)
        
        let region = MKCoordinateRegionMake(location, span)
        
        Map.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        //annotation.setCoordinate(location)
        annotation.coordinate = location
        annotation.title = "Viacom"
        annotation.subtitle = "Girls Who Code"
        
        Map.addAnnotation(annotation)
        
        //Showing the device location on the map
        self.Map.showsUserLocation = true;
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



