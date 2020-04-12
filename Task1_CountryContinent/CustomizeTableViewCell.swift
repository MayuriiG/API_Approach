//
//  CustomizeTableViewCell.swift
//  Task1_CountryContinent
//
//  Created by Mayurii Gajbhiye on 29/01/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit

class CustomizeTableViewCell: UITableViewCell {

  
    @IBOutlet weak var lblCountryName: UILabel!
    
    @IBOutlet weak var lblCapitalName: UILabel!
    
    @IBOutlet weak var imgeView: UIImageView!
    
    
    @IBOutlet weak var lblArea: UILabel!
    
    @IBOutlet weak var population: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
