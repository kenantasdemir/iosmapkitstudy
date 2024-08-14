//
//  ViewController.swift
//  iosmapkitstudy
//
//  Created by kenan on 12.08.2024.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    
 
    @IBOutlet weak var mapView: MKMapView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let location = CLLocationCoordinate2D(latitude: 41.0370014, longitude: 28.9763369)
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapView.setRegion(region, animated: true)
        let pin = MKPointAnnotation()
        pin.coordinate = location
        pin.title = "Taksim"
        pin.subtitle = "SUBTITLE"
        mapView.addAnnotation(pin)
    }


}

