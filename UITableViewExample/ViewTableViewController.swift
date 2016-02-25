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
    var appleProductsImages : [UIImage] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //Call a method to add images to AppleProductsImages array.
        addImagesToArray()
        //Call method to hide unused cells
        hideUnusedCells()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Method to add images to appleProductImages
    func addImagesToArray()
    {
        appleProductsImages.append(UIImage(named: "iPhone.png")!)
        appleProductsImages.append(UIImage(named: "iPad.png")!)
        appleProductsImages.append(UIImage(named: "iMac.png")!)
        appleProductsImages.append(UIImage(named: "MacbookPro.png")!)
        appleProductsImages.append(UIImage(named: "MacBookAir.png")!)
        appleProductsImages.append(UIImage(named: "AppleWatch.png")!)
        appleProductsImages.append(UIImage(named: "AppleTV.png")!)
    }
    //Method to hide unused cells in tableView
    func hideUnusedCells()
    {
        self.tableView.tableFooterView = UIView()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appleProducts.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        
        cell.titleLabel.text = appleProducts[indexPath.row]
        cell.applePictures.image = appleProductsImages[indexPath.row]
        //Make a circle rounded image
        //Set the corneradius = the half of the pictures size. 
        cell.applePictures.layer.cornerRadius = 25
        cell.applePictures.clipsToBounds = true
        
        
        return cell
    }
    

}
