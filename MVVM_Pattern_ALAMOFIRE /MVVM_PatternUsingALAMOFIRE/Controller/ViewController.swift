//
//  ViewController.swift
//  MVVM_PatternUsingALAMOFIRE
//
//  Created by Mayurii Gajbhiye on 09/04/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableV: UITableView!
    
    var viewModelUser = ViewModelFile() //file Name of ViewModel.swift
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        //viewModelUser.getUserData()//decoder func...(1)
viewModelUser.getUserAlamofireData()//alamofire func..(2)
     
viewModelUser.vc = self
        
//........nib file for registration of xib file....
        
let nib = UINib(nibName: "UserTableViewCell", bundle: nil)
tableV.register(nib, forCellReuseIdentifier: "usercell")
         
//....................................................(3)
        
        
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModelUser.arrUsers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "usercell", for: indexPath) as? UserTableViewCell
   
 //Cannot assign value of type 'Int?' to type 'String?'  "\()
        //viewModelUser...arrUsers
        

//see the userModel.swift file
     //usermodel......getStatusAndColor
        
        //check the viewfile.swift//.................
        
        //let user   = viewModelUser.arrUsers[indexPath.row]
        cell?.model = viewModelUser.arrUsers[indexPath.row]
    //cell.model  = model
        //cell.userConfigure()
        return cell!

    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
}

