//
//  NotificationController.swift
//  WatchKitNotification WatchKit Extension
//
//  Created by PanaCloud on 4/21/15.
//  Copyright (c) 2015 self. All rights reserved.
//

import WatchKit
import Foundation


class NotificationController: WKUserNotificationInterfaceController {

    @IBOutlet weak var watchMap: WKInterfaceMap!
    override init() {
        // Initialize variables here.
        super.init()
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    /*
    override func didReceiveLocalNotification(localNotification: UILocalNotification, withCompletion completionHandler: ((WKUserNotificationInterfaceType) -> Void)) {
        // This method is called when a local notification needs to be presented.
        // Implement it if you use a dynamic notification interface.
        // Populate your dynamic notification interface as quickly as possible.
        //
        // After populating your dynamic notification interface call the completion block.
        completionHandler(.Custom)
    }
    */
    
    override func didReceiveRemoteNotification(remoteNotification: [NSObject : AnyObject], withCompletion completionHandler: ((WKUserNotificationInterfaceType) -> Void)) {
        // This method is called when a remote notification needs to be presented.
        // Implement it if you use a dynamic notification interface.
        // Populate your dynamic notification interface as quickly as possible.
        //
        // After populating your dynamic notification interface call the completion block.
        setMapLocation()
        completionHandler(.Custom)
    }
    
    func setMapLocation() {
    
        var latitude :CLLocationDegrees = 24.813596200000000000
        var longitude:CLLocationDegrees = 67.049996299999980000
        
        var latDelta:CLLocationDegrees = 0.05
        var longDelta:CLLocationDegrees = 0.05
        
        var location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        var span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        var region = MKCoordinateRegion(center: location, span: span)
        self.watchMap.setRegion(region)
    
    
    }
}
