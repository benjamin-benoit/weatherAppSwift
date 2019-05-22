//
//  ViewController.swift
//  weatherAppSwift
//
//  Created by Benjamin BENOIT on 22/05/2019.
//  Copyright © 2019 Benjamin Ibrahima. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    var selectedCoordinate: CLLocationCoordinate2D?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.mapView.delegate = self
        for cities in CitiesData.list {
            let pin = MKPointAnnotation()
            pin.coordinate = cities.coordinates
            mapView.addAnnotation(pin)
        }
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        self.selectedCoordinate = view.annotation?.coordinate
        print(selectedCoordinate)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "annotation_ID" {
            if let weatherViewController = segue.destination as? WeatherViewController {
                weatherViewController.location = selectedCoordinate ?? CLLocationCoordinate2D()
            }
        }
    }
}
