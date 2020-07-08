//
//  BaseResponse.swift
//  MVVM-Swift
//
//  Created by MacBook Pro on 2.07.2020.
//  Copyright © 2020 Sezer Altun. All rights reserved.
//

import Foundation

struct BaseResponseArray<T:Decodable>:Decodable {
    var Items = [T]()
}
