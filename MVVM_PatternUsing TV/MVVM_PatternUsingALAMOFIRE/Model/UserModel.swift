

import Foundation


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

}
