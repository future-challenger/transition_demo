//
//  TDViewController.swift
//  transitionDemo
//
//  Created by Bruce Lee on 2/2/2016.
//  Copyright © 2016 Dynamic Cell. All rights reserved.
//

import UIKit

class TDViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    
    var singleData: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()

        self.dataLabel.text = self.singleData
        
        self.extendedLayoutIncludesOpaqueBars = true
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
//        self.view.translatesAutoresizingMaskIntoConstraints = false 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
