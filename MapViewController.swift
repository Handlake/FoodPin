//
//  MapViewController.swift
//  FoodPin
//
//  Created by Cayden on 2015. 3. 27..
//  Copyright (c) 2015년 story-ios. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet var mapView : MKMapView!
    
    var restaurant : Restaurant!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(restaurant.location, completionHandler: {placemarks, error in
            if error != nil {
                println(error)
                return
            }
            
            if placemarks != nil && placemarks.count > 0 {
                let placemark = placemarks[0] as! CLPlacemark
                
                let annotation = MKPointAnnotation()
                annotation.title = self.restaurant.name
                annotation.subtitle = self.restaurant.type
                annotation.coordinate = placemark.location.coordinate
                
                self.mapView.showAnnotations([annotation], animated: true)
                self.mapView.selectAnnotation(annotation, animated: true)
            }
            
        })
    }
    
    
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        let identifier = "MyPin"
        if annotation.isKindOfClass(MKUserLocation) {
            return nil
        }
        
        var annotationView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
        if annotationView == nil {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView.canShowCallout = true
        }
        
        let leftIconView = UIImageView(frame : CGRectMake(0, 0, 53, 53))
        leftIconView.image = UIImage(data: restaurant.image)
        annotationView.leftCalloutAccessoryView = leftIconView
        
        return annotationView
    }
}
