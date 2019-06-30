//
//  CountryTableViewCell.swift
//  CountryListApp
//
//  Created by Kailash Dabhi on 30/06/19.
//  Copyright © 2019 Kailash Dabhi. All rights reserved.
//

import UIKit

class CountryTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var religion: UILabel!
    @IBOutlet weak var population: UILabel!
    @IBOutlet weak var currencies: UILabel!
    @IBOutlet weak var flag: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
