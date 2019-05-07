//
//  CustomTransactionTableViewCell.swift
//  TabbedApplication
//
//  Created by Avinash Reddy on 5/7/19.
//  Copyright © 2019 Avinash Reddy. All rights reserved.
//

import UIKit

class CustomTransactionTableViewCell: UITableViewCell {
    
    // MARK:- Outlets
    @IBOutlet weak var transactionTitleLabel: UILabel!
    @IBOutlet weak var transactionDateLabel: UILabel!
    @IBOutlet weak var transactionPriceLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
