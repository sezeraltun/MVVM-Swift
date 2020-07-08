//
//  ViewController.swift
//  MVVM-Swift
//
//  Created by MacBook Pro on 2.07.2020.
//  Copyright © 2020 Sezer Altun. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    var listViewModel=ListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib.init(nibName: "UserTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "UserTableViewCell")
        listViewModel.delegate=self
        listViewModel.getUsers()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func clickedUserAdd(_ sender: Any) {
        listViewModel.addUsers()
    }
}

extension ListViewController:ListViewModelDelegate{
    
    func reloadData() {
        self.tableView.reloadData()
    }
    
}
extension ListViewController:UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return listViewModel.dataUserItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as! UserTableViewCell
        cell.labelName.text=listViewModel.dataUserItems[indexPath.section].name
        cell.labelSurname.text=listViewModel.dataUserItems[indexPath.section].username
        cell.labelMail.text=listViewModel.dataUserItems[indexPath.section].email
        
        return cell
    }
}
