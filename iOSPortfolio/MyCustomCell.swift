//
//  MyCustomCell.swift
//  iOSPortfolio
//
//  Created by 304 on 2020/08/20.
//  Copyright © 2020 304. All rights reserved.
//

import UIKit

class MyCustomCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    
    @IBAction func imageSwitch(_ sender: Any) {
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
