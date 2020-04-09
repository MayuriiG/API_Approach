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
    
        viewModelUser.getUserData()
        viewModelUser.vc = self
      let nib = UINib(nibName: "UserTableViewCell", bundle: nil)
tableV.register(nib, forCellReuseIdentifier: "usercell")
         
      //  tableV.register(UserTableViewCell.self, forCellReuseIdentifier: "usercell")
        
        
        
        
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModelUser.arrUsers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "usercell", for: indexPath) as? UserTableViewCell
   
 //Cannot assign value of type 'Int?' to type 'String?'
cell?.IDLbl.text = "\( viewModelUser.arrUsers[indexPath.row].id!)" as? String ?? "No iD"
  cell?.titleLbl.text = "\( viewModelUser.arrUsers[indexPath.row].title!)"
//
     //   cell?.statusLbl.text = "\( viewModelUser.arrUsers[indexPath.row].usId)"
        
        
        return cell!
    
    
    
    
    }
    
    
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 180
//    }
    
    
}

