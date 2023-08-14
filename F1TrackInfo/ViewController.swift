//
//  ViewController.swift
//  F1TrackInfo
//
//  Created by Eken Özlü on 14.08.2023.
//

import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Formula 1 Tracks Map"
        
        let startCoordinate = CLLocationCoordinate2D(latitude: 47.329494159422396, longitude: 8.986106158065779)
        let startReg = MKCoordinateRegion(center: startCoordinate, latitudinalMeters: 2000000, longitudinalMeters: 2000000)
        mapView.setRegion(startReg, animated: true)
        mapView.addAnnotations(trackList)
        mapView.mapType = .mutedStandard
    }

    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard annotation is Track else { return nil }
        
        let identifier = "Track"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
        
        if annotationView == nil {
            annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView?.canShowCallout = true
            
            let btn = UIButton(type: .detailDisclosure)
            annotationView?.rightCalloutAccessoryView = btn
        }else {
            annotationView?.annotation = annotation
        }
        
        annotationView?.image = UIImage(named: "track_pin")?.withTintColor(.red)
        annotationView?.frame.size = CGSize(width: 80, height: 80)
        
        return annotationView
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        guard let track = view.annotation as? Track else { return }
        
        let trackName = track.title
        let trackLen = track.length
        let totalGP = track.grandPrixHeld
        let firstGP = track.firstRaceYear
        
        let ac = UIAlertController(title: trackName,
                                   message: "\(trackLen!) KM \n Total of \(totalGP!) Grand Prix held \n First GP: \(firstGP!)",
                                   preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }
    
    func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trackList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackCell", for: indexPath) as! trackCell
        cell.trackLabel.text = trackList[indexPath.row].title!
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let region = MKCoordinateRegion(center: trackList[indexPath.row].coordinate, latitudinalMeters: 3000, longitudinalMeters: 3000)
        mapView.setRegion(region, animated: true)
        tableView.cellForRow(at: indexPath)?.selectionStyle = .none
    }
}
