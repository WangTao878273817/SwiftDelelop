//
//  TableViewCell.swift
//  SwiftDevelopDemo
//
//  Created by shoule on 2016/11/29.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
