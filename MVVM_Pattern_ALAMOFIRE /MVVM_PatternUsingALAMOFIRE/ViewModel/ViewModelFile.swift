//
//  ViewModel.swift
//  MVVM_PatternUsingALAMOFIRE
//
//  Created by Mayurii Gajbhiye on 09/04/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.

//Swift file    ( data/service )

import UIKit
import Alamofire
class ViewModelFile{
    
        //Struct file Name
    var arrUsers = [UserModel]()
  
    weak var vc: ViewController?  //to Avoid "retain cycle"
    
  
 //...............Alamofire function.......................
    
    func getUserAlamofireData(){
        
AF.request("https://jsonplaceholder.typicode.com/todos/").response { response in
        
             //add response before data
            if let dataa = response.data{
               do{
                                   
                    let  userResponse = try JSONDecoder().decode([UserModel].self, from: dataa)
                    self.arrUsers.append(contentsOf: userResponse)
                              
                               
    DispatchQueue.main.async {
        self.vc?.tableV.reloadData()
        }
              //for loop..........
    for i in userResponse{
        self.arrUsers.append(i)
        }
        print(self.arrUsers)

     
               }catch let err{
                  print(err.localizedDescription)
               }
                               
            }
        }
        
    }
 
    //...............JSONDECODER function................
    func getUserData(){
        
       // URLSession.shared.dataTask(with: <#T##URL#>, completionHandler: <#T##(Data?, URLResponse?, Error?) -> Void#>)
        
        URLSession.shared.dataTask(with: URL(string: "https://jsonplaceholder.typicode.com/todos/")!) { (data, response, error) in
            if error == nil {
                
            if let dataa = data{
                do{
                        
                    let  userResponse = try JSONDecoder().decode([UserModel].self, from: dataa)
               //structFileName  //array of UserModel
                                         
                    //print(userResponse)
                
                    self.arrUsers.append(contentsOf: userResponse)
                   
                    
                    DispatchQueue.main.async {
                        self.vc?.tableV.reloadData()
                    } //table view in thread
 
                  
                    for i in userResponse{
                        self.arrUsers.append(i)
                     }
                    
                    print(self.arrUsers)


                }catch let err{
                        
                    print(err.localizedDescription)
                        
                }
                    
                    
            }
                
            }else{
                
                print(error?.localizedDescription)//error == nil
            }
        }.resume()
        
        
    }
    
    
}
    
    

