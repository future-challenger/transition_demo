//
//  DetailStoryboardSegue.swift
//  transitionDemo
//
//  Created by Bruce Lee on 2/2/2016.
//  Copyright © 2016 Dynamic Cell. All rights reserved.
//

import UIKit

class DetailStoryboardSegue: UIStoryboardSegue {
    override func perform() {
        let sourceView = self.sourceViewController.view
        let destView = self.destinationViewController.view
        
        let window = (UIApplication.sharedApplication().delegate as! AppDelegate).window
        window?.insertSubview(destView, aboveSubview: sourceView)
        
        destView.alpha = 0.0
        
        UIView.animateWithDuration(0.3, animations: {
            destView.alpha = 1.0
        })
    }
}
