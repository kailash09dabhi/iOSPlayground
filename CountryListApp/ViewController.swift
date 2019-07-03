//
//  ViewController.swift
//  CountryListApp
//
//  Created by Kailash Dabhi on 30/06/19.
//  Copyright © 2019 Kailash Dabhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var countryList : CountryList = []
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let country = countryList[indexPath.row]
        let cell =   tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!CountryTableViewCell
        cell.name?.text = country.name
        if country.currencies[0].name != nil {
            cell.currencies?.text = country.currencies[0].name
        }
        cell.flag?.text = country.flag
        cell.flagImg?.sd_setImage(with: URL(string: "https://images.pexels.com/photos/248797/pexels-photo-248797.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=2000"),completed:{ (uiimage, sd, asds, isds) in })
        cell.population?.text = String(country.population)
        cell.religion?.text = country.capital
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        URLSession.shared.countryListTask(with: url!){
            countryList,response,error in
            DispatchQueue.main.async {
                self.countryList = countryList!.dropLast(245)
                self.tableView.reloadData()
            }
            }.resume()
    }

}

