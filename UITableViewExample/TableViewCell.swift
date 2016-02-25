//
//  TableViewCell.swift
//  UITableViewExample
//
//  Copyright © 2016 Marius Skalstad. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
 
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var applePictures: UIImageView!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
