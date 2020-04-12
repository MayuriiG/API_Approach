//
//  ViewController.swift
//  Task1_CountryContinent
//
//  Created by Mayurii Gajbhiye on 28/01/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit
import SVGKit


class ViewController: UIViewController {

    
    @IBOutlet weak var progress: UIActivityIndicatorView!
    var arraySet  = Set<String>() //Set for unique value
   
    
    var arraySecondTime = [String]()
    
    
    
    var oceania = [String]()
    var africa = [String]()
    var asia = [String]()
    var americas = [String]()
    var europe = [String]()
    var polar = [String]()
    
    var oceaniaCapital = [String]()
    var africaCapital = [String]()
    var asiaCapital = [String]()
    var americasCapital = [String]()
    var europeCapital = [String]()
    var polarCapital = [String]()
    
    var oceaniaCapitalArea = [Float]()
    var africaCapitalArea = [Float]()
    var asiaCapitalArea = [Float]()
    var americasCapitalArea = [Float]()
    var europeCapitalArea = [Float]()
    var polarCapitalArea = [Float]()
    
    var oceaniaCapiPopulation = [Int]()
    var africaCapiPopulation = [Int]()
    var asiaCapiPopulation = [Int]()
    var americasCapiPopulation = [Int]()
    var europeCapiPopulation = [Int]()
    var polarCapiPopulation = [Int]()
    
    var oceaniaCapitalFlag = [SVGKImage]()
    var africaCapitalFlag = [SVGKImage]()
    var asiaCapitalFlag = [SVGKImage]()
    var americasCapitalFlag = [SVGKImage]()
    var europeCapitalFlag = [SVGKImage]()
    var polarCapitalFlag = [SVGKImage]()
       
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

// JsonVC.dataDelegate.jsonData()//Calling the jsonData in view controller
         countryDataFromServer()
        
    }
//........................................................................
    
    
    func countryDataFromServer(){
    // 2 in one step  //  json calling in functions(Retriving the data)
   
        self.progress.startAnimating()
    var data = JsonVC.dataDelegate.jsonData()
        print(data.count)
        
     //Appending the data in Set for unique storage Of Region
        for i in 0..<data.count{
            //data[i]["region"]
            
            if data[i]["region"] as! String  == "" {
                
            }else
            {
                   arraySet.insert(data[i]["region"] as! String )
                 //print(arraySet)
            }
   
            
    //Appending the data in Respective regions
            
            if (data[i]["region"] as! String == "Oceania"){
                oceania.append(data[i]["name"] as! String)
                oceaniaCapital.append(data[i]["capital"] as! String)
                oceaniaCapitalArea.append(data[i]["area"] as? Float ?? 0.0)
                oceaniaCapiPopulation.append(data[i]["population"] as! Int)
                
    //Image conversion from (string to URl) format then (URL TO DATA)
            //    ( DATA to Svgimage)
             
                let imgeUrl =  data[i]["flag"] as! String //URL formate
                let imageConvert = URL(string: imgeUrl)//Hitting the server
                if let imageData = try? Data(contentsOf: imageConvert!){
                let aSVGImage:SVGKImage = SVGKImage(data: imageData)
                    oceaniaCapitalFlag.append(aSVGImage)

              }
            }
            
            if (data[i]["region"] as! String == "Europe"){
                europe.append(data[i]["name"] as! String)
                europeCapital.append(data[i]["capital"] as! String)
                europeCapitalArea.append(data[i]["area"] as? Float ?? 0.0)
                europeCapiPopulation.append(data[i]["population"] as! Int)
                
                    let imgeUrl =  data[i]["flag"] as! String //URL formate
                    let imageConvert = URL(string: imgeUrl)//Hitting the server
                    if let imageData = try? Data(contentsOf: imageConvert!){
                    let aSVGImage:SVGKImage = SVGKImage(data: imageData)
                    europeCapitalFlag.append(aSVGImage)

                }
            }
            
            if (data[i]["region"] as! String == "Africa"){
                africa.append(data[i]["name"] as! String)
                africaCapital.append(data[i]["capital"] as! String)
                africaCapitalArea.append(data[i]["area"] as? Float ?? 0.0)
                africaCapiPopulation.append(data[i]["population"] as! Int)
                
                    let imgeUrl =  data[i]["flag"] as! String //URL formate
                    let imageConvert = URL(string: imgeUrl)//Hitting the server
                    if let imageData = try? Data(contentsOf: imageConvert!){
                    let aSVGImage:SVGKImage = SVGKImage(data: imageData)
                       africaCapitalFlag.append(aSVGImage)

                }
                        
            }
            if (data[i]["region"] as! String == "Asia"){
                asia.append(data[i]["name"] as! String)
                asiaCapital.append(data[i]["capital"] as! String)
                asiaCapitalArea.append(data[i]["area"] as? Float ?? 0.0)
                asiaCapiPopulation.append(data[i]["population"] as! Int)
                
                    let imgeUrl =  data[i]["flag"] as! String //URL formate
                    let imageConvert = URL(string: imgeUrl)//Hitting the server
                    if let imageData = try? Data(contentsOf: imageConvert!){
                    let aSVGImage:SVGKImage = SVGKImage(data: imageData)
                       asiaCapitalFlag.append(aSVGImage)

                        
                }
            }
             
           if (data[i]["region"] as! String == "Americas"){
                americas.append(data[i]["name"] as! String)
               americasCapital.append(data[i]["capital"] as! String)
            americasCapitalArea.append(data[i]["area"]as? Float ?? 0.0)
            americasCapiPopulation.append(data[i]["population"] as! Int)
            
                let imgeUrl =  data[i]["flag"] as! String //URL formate
                let imageConvert = URL(string: imgeUrl)//Hitting the server
                if let imageData = try? Data(contentsOf: imageConvert!){
                let aSVGImage:SVGKImage = SVGKImage(data: imageData)
                    americasCapitalFlag.append(aSVGImage)

               }
            }
            
           if (data[i]["region"] as! String == "Polar"){
                polar.append(data[i]["name"] as! String)
            polarCapital.append(data[i]["capital"] as! String)
            polarCapitalArea.append(data[i]["area"] as? Float ?? 0.0)
           polarCapiPopulation.append(data[i]["population"] as! Int)
            
            
                let imgeUrl =  data[i]["flag"] as! String //URL formate
                let imageConvert = URL(string: imgeUrl)//Hitting the server
                if let imageData = try? Data(contentsOf: imageConvert!){
                let aSVGImage:SVGKImage = SVGKImage(data: imageData)
                   polarCapitalFlag.append(aSVGImage)

           }
    
            }
            
            
        }
        print(oceaniaCapital)
       print(oceania)
        
//......................................................
       // for j in arraySet.count{
        for j in arraySet{
            
            arraySecondTime.append(j)
         print(arraySecondTime)
       
        
        }
            
    //  print(oceania)
    //  print(europe)
    }
    

   }

//......................................................................
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arraySecondTime.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
    cell.textLabel?.text = arraySecondTime[indexPath.row]
 
//        cell.textLabel?.font = UIFont(name: "futura", size: 20.0)
//        cell.textLabel?.textColor = UIColor.purple

        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
//..............................NextVC.(didselectROw).........................

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
  
        let nextVC = self.storyboard?.instantiateViewController(identifier: "CountriesViewController") as! CountriesViewController
        
        
        print(arraySecondTime[indexPath.row])
        
        if arraySecondTime[indexPath.row] == "Americas"{
            nextVC.subRegion = americas
            nextVC.capitalsDis = americasCapital
           nextVC.areaDetails = americasCapitalArea
            nextVC.populationDetails = americasCapiPopulation
            nextVC.flag = americasCapitalFlag
            
        }
        if arraySecondTime[indexPath.row] == "Africa"{
            nextVC.subRegion = africa
            nextVC.capitalsDis = africaCapital
           nextVC.areaDetails = africaCapitalArea
            nextVC.populationDetails = africaCapiPopulation
            nextVC.flag = africaCapitalFlag
        }
    
        if arraySecondTime[indexPath.row] == "Europe"{
            nextVC.subRegion = europe
            nextVC.capitalsDis = europeCapital
            nextVC.areaDetails =  europeCapitalArea
            nextVC.populationDetails = europeCapiPopulation
            nextVC.flag = europeCapitalFlag
         }
            
        if arraySecondTime[indexPath.row] == "Polar"{
            nextVC.subRegion = polar
            nextVC.capitalsDis = polarCapital
            nextVC.areaDetails = polarCapitalArea
            nextVC.populationDetails = polarCapiPopulation
            nextVC.flag = polarCapitalFlag
        }
        
        if arraySecondTime[indexPath.row] == "Asia"{
            nextVC.subRegion = asia
            nextVC.capitalsDis = asiaCapital
            nextVC.areaDetails = asiaCapitalArea
            nextVC.populationDetails = asiaCapiPopulation
            nextVC.flag = asiaCapitalFlag
            
        }
        if arraySecondTime[indexPath.row] == "Oceania"{
            nextVC.subRegion = oceania
            nextVC.capitalsDis = oceaniaCapital
            nextVC.areaDetails = oceaniaCapitalArea
            nextVC.populationDetails = oceaniaCapiPopulation
            nextVC.flag = oceaniaCapitalFlag
                }
            print(africa)
            
        self.navigationController?.pushViewController(nextVC, animated: true)
       
    }
 
    


//1)json
//2)calling json in func
//3)we want 6 array -for different region -europe/asia etc
//4) then  moviong to nextvc -didselect
//5)form tableview next 
    
}
