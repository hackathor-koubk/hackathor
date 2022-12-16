//
//  MapController.swift
//  koubk
//
//  Created by Fatih Bilgin on 16.12.2022.
//

import UIKit
import GoogleMaps
import GooglePlaces

class MapController: UIViewController {

    @IBOutlet weak var myMap: GMSMapView!
    @IBOutlet weak var locationTapped: UIButton!
    @IBOutlet weak var txtSearch: UITextField!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myMap.settings.compassButton = true
        
        myMap.isMyLocationEnabled = true
        myMap.settings.myLocationButton = true
        
        
    }
    @IBAction func locationTapp(_ sender: Any) {
        gotoPlaces()
    }
    
    func gotoPlaces() {
        txtSearch.resignFirstResponder()
        let acController = GMSAutocompleteViewController()
        acController.delegate = self
        present(acController, animated: true)
    }
    
    
    
    
    

    
}

extension MapController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
        print("locations = \(locValue.latitude) \(locValue.longitude)")
    }
}

extension MapController: GMSAutocompleteViewControllerDelegate {
    func viewController(_ viewController: GMSAutocompleteViewController, didAutocompleteWith place: GMSPlace) {
        print("Place name: \(String(describing: place.name))")
        dismiss(animated: true)
        
        self.myMap.clear()
        self.txtSearch.text = place.name
        
        let cord2D = CLLocationCoordinate2D(latitude: (place.coordinate.latitude),
                                            longitude: (place.coordinate.longitude))
        
        let marker = GMSMarker()
        marker.position = cord2D
        marker.title = "Location"
        marker.snippet = place.name
        
        let markerImage = UIImage(named: "location-pin")
        let markerView = UIImageView(image: markerImage)
        marker.iconView = markerView
        marker.map = self.myMap
        
        self.myMap.camera = GMSCameraPosition.camera(withTarget: cord2D, zoom: 15)
    }
    
    func viewController(_ viewController: GMSAutocompleteViewController, didFailAutocompleteWithError error: Error) {
        print(error.localizedDescription)
    }
    
    func wasCancelled(_ viewController: GMSAutocompleteViewController) {
        
    }
    
    
}
