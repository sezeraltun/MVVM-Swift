//
//  UserTableViewCell.swift
//  MVVM-Swift
//
//  Created by MacBook Pro on 3.07.2020.
//  Copyright © 2020 Sezer Altun. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelSurname: UILabel!
    @IBOutlet weak var labelMail: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
