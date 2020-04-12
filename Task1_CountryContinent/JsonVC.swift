//
//  JsonVC.swift
//  Task1_CountryContinent
//
//  Created by Mayurii Gajbhiye on 28/01/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit

class JsonVC: NSObject {
    
    
    var urlReqObj : URLRequest!
    var dataTask : URLSessionDataTask!
    
    static var dataDelegate : JsonVC  = JsonVC()
    

    func  jsonData () -> [[String:Any]]{
        
        var convertedData : [[String:Any]]!
        
        urlReqObj = URLRequest(url: URL(string: "https://restcountries.eu/rest/v2/all")!)
        
        urlReqObj.httpMethod  = "Get"
        
        dataTask = URLSession.shared.dataTask(with: urlReqObj, completionHandler: { (data, response, error) in

      do{
        convertedData  = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments)as![[String:Any]]
                
                  print(convertedData)
          
         }catch{
                print("Something went Wrong")
          
         }
                
        })
        dataTask.resume()
        while convertedData == nil {
            
        }
        
        return convertedData
      }
               
        

}
