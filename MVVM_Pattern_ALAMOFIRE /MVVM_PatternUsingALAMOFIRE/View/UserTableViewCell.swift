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
    
    var model: UserModel?{
        
        didSet {
            
            userConfigure()
        }
    }
    
        override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    

    func userConfigure(){
      //  UserModel.getStatusNdColor()
                
     // cell?.statusLbl.text = statuss.0
    let status = model?.getStatusNdColor()
        statusLbl.text = status?.0
        backgroundColor = status?.1 //,.......Status..(1)

                if let id  = model?.id{
                    IDLbl.text = "\(id)"
                }else{
                    IDLbl.text = "No ID Available" //...iD..(2)
                }
        
        titleLbl.text = model?.title //..........Title..(3)
        
//IDLbl.text = ( model?.id ) as? String ?? "No id Available"//ID Label
        
//  cell?.IDLbl.text = "\( viewModelUser.arrUsers[indexPath.row].id!)" as? String ?? "No iD"
        
           }
    
     }
