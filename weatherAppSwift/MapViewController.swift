//
//  ViewController.swift
//  weatherAppSwift
//
//  Created by Benjamin BENOIT on 22/05/2019.
//  Copyright © 2019 Benjamin Ibrahima. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    var selectedCoordinate: CLLocationCoordinate2D?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for cities in CitiesData.list {
            let pin = MKPointAnnotation()
            pin.coordinate = cities.coordinates
            mapView.addAnnotation(pin)
        }
    }
    
    //    func mapView(mapView: MKMapView, didSelectAnnotationView view: MKAnnotationView){
    //        performSegue(withIdentifier: "annotation_ID", sender: nil)
    //    }
    
    func mapView(mapView: MKMapView, didSelectAnnotationView view: MKAnnotationView) {
        self.selectedCoordinate = view.annotation as? CLLocationCoordinate2D
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //        let filteredLocations = CitiesData.filter { (location) -> Bool in
        //            return (location.latitude == self.selectedAnnotation?.coordinate.latitude && location.longitude == self.selectedAnnotation?.coordinate.longitude)
        //        }
        //        let selectedLocation = filteredLocations.first
        if segue.identifier == "annotation_ID" {
            let weatherViewController = segue.destination as! WeatherViewController
            weatherViewController.location = selectedCoordinate ?? CLLocationCoordinate2D()
        }
    }
    
}
