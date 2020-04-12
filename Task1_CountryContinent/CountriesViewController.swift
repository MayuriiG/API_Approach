//
//  CountriesViewController.swift
//  Task1_CountryContinent
//
//  Created by Mayurii Gajbhiye on 28/01/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit
import SVGKit

class CountriesViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var tableviewCustomize: UITableView!
    
    //    var americasRegion = [String]()
//    var africaRegion = [String]()
//    var asiaRegion = [String]()
//    var europeRegion = [String]()
//    var polarRegion = [String]()
//    var oceniaRegion = [String]()
    
    var subRegion = [String]() //region array for all
    
    var capitalsDis = [String]() //country Name array for all
    
    var areaDetails = [Float]()
    var populationDetails = [Int]()
  
    var flag = [SVGKImage]()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let nib  = UINib(nibName: "CustomizeTableViewCell", bundle: nil)
        tableviewCustomize.register(nib, forCellReuseIdentifier: "cell3")
        // Do any additional setup after loading the view.
    }
    
 
    
//..................................................................
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subRegion.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    //let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! CustomizeTableViewCell
       let cell = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! CustomizeTableViewCell
       // cell.textLabel?.text = subRegion[indexPath.row]
    cell.lblCountryName.text = subRegion[indexPath.row] //Country Name
    cell.lblCapitalName.text = capitalsDis[indexPath.row] //Capitals Name
        cell.lblArea.text =  "\(areaDetails[indexPath.row])"//Area
    cell.population.text = "\(populationDetails[indexPath.row])" //Population
        
        
        //"\()"   -- when it is not taking as !string
  cell.imgeView?.image = flag[indexPath.row].uiImage //flag Image
    
        return cell
        
    }
    
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
}

//...........................................................................


//image adding  or details adding process

//add in view controller
//2) add in table view vc
//3) then add in instance then
//4)in tableview in cell format
//5)add in next vc

