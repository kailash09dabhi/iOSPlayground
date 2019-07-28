//
//  CountryDetailViewController.swift
//  CountryListApp
//
//  Created by Kailash Dabhi on 08/07/19.
//  Copyright © 2019 Kailash Dabhi. All rights reserved.
//

import UIKit

class CountryDetailViewController: UIViewController {
    var country :CountryListElement?
    @IBOutlet weak var currency: UILabel!
    @IBOutlet weak var population: UILabel!
    @IBOutlet weak var capital: UILabel!
    @IBOutlet weak var language: UILabel!
    @IBOutlet weak var demonym: UILabel!
    @IBOutlet weak var region: UILabel!
    @IBOutlet weak var flagImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        currency.text = country?.currencies[0].name
        population.text = "Population: \(country!.population)"
        capital.text = "Capital: \(country!.capital)"
        language.text = "Language: \(country!.languages[0].name)"
        flagImg?.sd_setImage(with: URL(string: "https://images.pexels.com/photos/248797/pexels-photo-248797.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=2000"),completed:{ (uiimage, sd, asds, isds) in })
        
        // Do any additional setup after loading the view.
    }
}
