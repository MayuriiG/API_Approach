

import Foundation
import UIKit


// open the json link in   //https://www.json4swift.com/results.php

//https://jsonplaceholder.typicode.com/todos/    )api


//Encode-decode||
struct UserModel : Codable {
	let usId : Int?
	let id : Int?
	let title : String?
	let completed : Bool?

    
	enum CodingKeys: String, CodingKey {
                 // = key
        //remove the underscore so GIVE variable
		case usId = "userId"
		case id = "id"
		case title = "title"
		case completed = "completed"
	}
    
    
    
    
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		usId = try values.decodeIfPresent(Int.self, forKey: .usId)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		completed = try values.decodeIfPresent(Bool.self, forKey: .completed)
	}

//......................as data in status COMPLETED is in TRUE/FALSE (BOOLEAN) format.............
   
//    func getStatus() -> String{
//        if completed ?? true{
//            return "Completed"
//        }else{
//            
//            return "Not Completed"
//        }
//    
//    }
//    //import uikit otherwise it wont take uicolor
//    func getStatusColor() -> UIColor{
//        if completed ?? true{
//            return UIColor.systemPink
//            
//        }else {
//            
//            return UIColor.systemRed
//        }
//        
//    }
    //bracket is needed||| for multiple parameters||


    func getStatusNdColor() -> (String,UIColor){
        
    if completed ?? true{
        return ("✮✮Completed✮✮", UIColor(cgColor: #colorLiteral(red: 0.1773121738, green: 0.5135205766, blue: 0.265741404, alpha: 1)))
    
        }else {
    
        return ("🥺Not Completed 🥺😵",UIColor(cgColor: #colorLiteral(red: 0.7840886108, green: 0.724824868, blue: 0.6878724739, alpha: 1)))
            }
    
        }
  //update in view ....||status
}
