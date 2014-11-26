//
//  SettingsView.swift
//  TimeOut
//
//  Created by Niela Sultana on 11/24/14.
//  Copyright (c) 2014 Niela Sultana. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

class SettingsView: UIViewController, CLLocationManagerDelegate {
    
    
    @IBOutlet weak var musicON: UISegmentedControl!
    
    
    @IBOutlet weak var SoundOn: UISegmentedControl!
    
    
    @IBOutlet weak var LocOn: UISegmentedControl!
    
    
    @IBOutlet var theUUID: UITextField!
    
    var text: String!
    
    
    @IBOutlet var identifierTitle: UITextField!

    
    let locationManager = CLLocationManager()
    
    let region = CLBeaconRegion(proximityUUID: NSUUID(UUIDString: ""), identifier: "Home")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        if( CLLocationManager.authorizationStatus() != CLAuthorizationStatus.AuthorizedWhenInUse){
        
            locationManager.requestWhenInUseAuthorization()
        }
        locationManager.startRangingBeaconsInRegion(region)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func locationManager(manager: CLLocationManager!, didRangeBeacons beacons: [AnyObject]!, inRegion region: CLBeaconRegion!)
    {
        var knownBeacons = beacons.filter { $0.proximity != CLProximity.Unknown}
        knownBeacons.filter { $0.proximity != CLProximity.Near}
        if (knownBeacons.count > 0)
        {
            let closestBeacon = knownBeacons[0] as CLBeacon
        }
    }
    
}
