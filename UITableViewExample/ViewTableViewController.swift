//
//  ViewTableViewController.swift
//  UITableViewExample
//
//  Created by Cato Skalstad on 25.02.2016.
//  Copyright © 2016 Marius Skalstad. All rights reserved.
//

import UIKit

class ViewTableViewController: UITableViewController {
    
    let appleProducts = ["iPhone","iPad","iMac","Macbook Pro","Macbook Air","Apple Watch","Apple TV"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appleProducts.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = appleProducts[indexPath.row]

        return cell
    }
    

}
