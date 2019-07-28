//
//  CountryTableViewCell.swift
//  CountryListApp
//
//  Created by Kailash Dabhi on 30/06/19.
//  Copyright © 2019 Kailash Dabhi. All rights reserved.
//

import UIKit

class CountryTableViewCell: UITableViewCell {
    @IBOutlet var background: UIView!
    @IBOutlet weak var flagImg: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var religion: UILabel!
    @IBOutlet weak var population: UILabel!
    @IBOutlet weak var currencies: UILabel!
    @IBOutlet weak var flag: UILabel!
    @IBOutlet weak var mainStack: UIStackView!
    
    var country: CountryListElement!{
        didSet{
            name?.text = country.name
            if country.currencies[0].name != nil {
                currencies?.text = country.currencies[0].name
            }
            flag?.text = country.flag
            flagImg?.sd_setImage(with: URL(string: "https://images.pexels.com/photos/248797/pexels-photo-248797.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=2000"),completed:{ (uiimage, sd, asds, isds) in })
            population?.text = String(country.population)
            religion?.text = country.capital
            elevate(view: background!, elevation: 8.0)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    func elevate(view:UIView, elevation: Double) {
        view.backgroundColor = UIColor.white
        view.layer.cornerRadius = 14.0
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor.black.withAlphaComponent(0.4).cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowRadius = CGFloat(elevation)
        view.layer.shadowOpacity = 1.0
        view.layer.shadowPath = UIBezierPath(roundedRect: view.bounds, cornerRadius: 14.0).cgPath
    }
    
}
