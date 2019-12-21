//
//  TableViewCell.swift
//  fcu_iOSClub_test
//
//  Created by 阿騰 on 2019/12/21.
//  Copyright © 2019 阿騰. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var imag: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var Id: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
