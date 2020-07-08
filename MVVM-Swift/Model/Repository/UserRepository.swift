//
//  UserRepository.swift
//  MVVM-Swift
//
//  Created by MacBook Pro on 2.07.2020.
//  Copyright © 2020 Sezer Altun. All rights reserved.
//

import Alamofire
import SwiftyJSON
import Foundation
class UserRepository{
    
    func getUsers(callback:@escaping (AFResult<[UsersModel]>)->Void) {
        
        // let randomInt = Int.random(in: 0..<1000)
        // let url=ApiClient.apiUrlCms+url+"&random=\(randomInt)"
        let url=ApiClient.apiUrlRoot+"users"
        AF.request(url).responseDecodable { (response: AFDataResponse<[UsersModel]>) in
            callback(response.result)
            
        }
    }
    
}
