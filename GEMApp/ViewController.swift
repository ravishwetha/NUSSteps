//
//  ViewController.swift
//  GEMApp
//
//  Created by Ravi on 16/1/16.
//  Copyright © 2016 Group24. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController, GMSMapViewDelegate {
    
    //map
    var googleMapView: GMSMapView!
    var locationManager = CLLocationManager()
    var didFindMyLocation = false
    
    //map
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let camera = GMSCameraPosition.cameraWithLatitude(1.2956,
            longitude: 103.7767, zoom: 15) //NUS coordinates: 1.2956, 103.7767
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.setMinZoom(15, maxZoom: 20)
        
        mapView.myLocationEnabled = true
        if let mylocation = mapView.myLocation {
            print("User's location: \(mylocation)")
        } else {
            print("User's location is unknown")
        }
        mapView.delegate = self
        self.view = mapView
        
        let soc = GMSMarker()
        soc.position = CLLocationCoordinate2DMake(1.295062, 103.774069)
        //soc.appearAnimation = kGMSMarkerAnimationPop
        //soc.infoWindowAnchor = CGPointMake(0.5, 0.5)
        soc.icon = UIImage(named: "facultyflag")
        soc.title = "School of Computing"
        soc.snippet = "Faculty"
        soc.map = mapView
        
        let rvrc = GMSMarker()
        rvrc.position = CLLocationCoordinate2DMake(1.298310, 103.776361)
        //rvrc.appearAnimation = kGMSMarkerAnimationPop
        //rvrc.infoWindowAnchor = CGPointMake(0.5, 0.5)
        rvrc.icon = UIImage(named: "residence")
        rvrc.title = "Ridge View Residential College"
        rvrc.snippet = "Residential College"
        rvrc.map = mapView
    }
    
/*
    func mapView(mapView: GMSMapView!, didTapMarker marker: GMSMarker!) -> Bool {
        
        //RVRC Directions Button
        
        let rvrcButton   = UIButton(type: UIButtonType.System) as UIButton
        //var rvrcButton = (self.view.viewWithTag(11) as? UIButton)!
        
        rvrcButton.frame = CGRectMake(0, 540, self.view.frame.size.width, 40)
        rvrcButton.setTitle("Start at Ridge View Residential College", forState: UIControlState.Normal)
        rvrcButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        rvrcButton.layer.cornerRadius = 2;
        rvrcButton.layer.borderWidth = 1;
        rvrcButton.layer.borderColor = UIColor.blackColor().CGColor
        rvrcButton.backgroundColor = UIColor.orangeColor()
        
        rvrcButton.addTarget(self, action: "rvrcButtonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(rvrcButton)
        
        //SOC Directions Button
        
        let socButton   = UIButton(type: UIButtonType.System) as UIButton
        //var socButton = (self.view.viewWithTag(11) as? UIButton)!
        
        socButton.frame = CGRectMake(0, 540, self.view.frame.size.width, 40)
        socButton.setTitle("Start at School of Computing", forState: UIControlState.Normal)
        socButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        socButton.layer.cornerRadius = 2;
        socButton.layer.borderWidth = 1;
        socButton.layer.borderColor = UIColor.blackColor().CGColor
        socButton.backgroundColor = UIColor.orangeColor()
        
        socButton.addTarget(self, action: "socButtonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(socButton)

        
        //Cancel Button
        
        let cButton   = UIButton(type: UIButtonType.System) as UIButton
        cButton.frame = CGRectMake(0, 580, self.view.frame.size.width, 40)
        cButton.setTitle("Cancel", forState: UIControlState.Normal)
        cButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        cButton.layer.cornerRadius = 2;
        cButton.layer.borderWidth = 1;
        cButton.layer.borderColor = UIColor.blackColor().CGColor
        cButton.backgroundColor = UIColor.orangeColor()
        
        cButton.addTarget(self, action: "cButtonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(cButton)

        return true
    }
    
    //RVRC Directions Button Action
    
    @IBAction func rvrcButtonAction(sender:UIButton!) {
        print("Directions from rvrc button tapped")
    }
    
    //SOC Directions Button Action
    
    @IBAction func socButtonAction(sender:UIButton!) {
        print("Directions from soc button tapped")
    }

    
    //Cancel Button Action
    
    @IBAction func cButtonAction(sender:UIButton!) {
        print("Cancel button tapped")
        //if let button = self.view.viewWithTag(11) as? UIButton
        //{
        //    button.hidden = true
        //}
    }
*/
}
