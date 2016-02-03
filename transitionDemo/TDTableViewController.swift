//
//  TDTableViewController.swift
//  transitionDemo
//
//  Created by Bruce Lee on 2/2/2016.
//  Copyright © 2016 Dynamic Cell. All rights reserved.
//

import UIKit

class TDTableViewController: UITableViewController {

    var tableViewDataSource: [String]?
    var dataItem: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        createDataSource()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.view.translatesAutoresizingMaskIntoConstraints = false 
    }
    
    func createDataSource() {
        if let _ = self.tableViewDataSource {
            return
        }
        
        self.tableViewDataSource = [String]()
        for i in 0..<100 {
            self.tableViewDataSource!.append("item :- [\(i)]")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.tableViewDataSource!.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

        cell.textLabel?.text = self.tableViewDataSource![indexPath.row]

        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.dataItem = self.tableViewDataSource![indexPath.row]
        let destController = self.storyboard?.instantiateViewControllerWithIdentifier("TDViewController") as! TDViewController
        destController.singleData = dataItem
        self.navigationController?.pushViewController(destController, animated: true)
        
//        self.performSegueWithIdentifier("TDViewController", sender: nil)
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier != "TDViewController" {
            return
        }
        
        let destinationController = segue.destinationViewController as! TDViewController
        destinationController.singleData = self.dataItem!
    }

}
