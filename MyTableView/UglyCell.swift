//
//  UglyCell.swift
//  MyTableView
//
//  Created by Emanuel  Guerrero on 3/9/16.
//  Copyright © 2016 Project Omicron. All rights reserved.
//

import UIKit

class UglyCell: UITableViewCell {
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mainImage.layer.cornerRadius = 5.0
        mainImage.clipsToBounds = true
    }
    
    func configureCell(image: UIImage, text: String) {
        mainImage.image = image
        mainLabel.text = text
    }
}
