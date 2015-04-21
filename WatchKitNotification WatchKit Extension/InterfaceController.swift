//
//  InterfaceController.swift
//  WatchKitNotification WatchKit Extension
//
//  Created by PanaCloud on 4/21/15.
//  Copyright (c) 2015 self. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
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
    override func handleActionWithIdentifier(identifier: String?, forRemoteNotification remoteNotification: [NSObject : AnyObject]) {
        if identifier == "firstButtonAction"{
        println("This is message from notification")
        } else {
        println("Normal Action")
        }
    }
    }
