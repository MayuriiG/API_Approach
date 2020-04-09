//
//  UserTableViewCell.swift
//  MVVM_PatternUsingALAMOFIRE
//
//  Created by Mayurii Gajbhiye on 09/04/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

 
    @IBOutlet weak var IDLbl: UILabel!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var statusLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
