//
//  ListViewModel.swift
//  MVVM-Swift
//
//  Created by MacBook Pro on 3.07.2020.
//  Copyright © 2020 Sezer Altun. All rights reserved.
//

import Foundation

protocol ListViewModelDelegate {
    func reloadData()
}

class ListViewModel{
    
    var dataUserItems=[UsersModel]()
    var repository:UserRepository?
    var delegate:ListViewModelDelegate?
    
    init() {
        repository = UserRepository();
    }
    
    func getUsers(){
        
        guard let repo = repository else {
            return
        }
        
        repo.getUsers(){ result in
            switch result{
            case .success(let data):
                print("result :",data)
                self.dataUserItems=data
                self.delegate?.reloadData()
            case.failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    func addUsers(){
        self.dataUserItems.append(UsersModel(name: "New User", username: "Surname", email: "newuser@ww.com"))
        self.delegate?.reloadData()
    }
}
