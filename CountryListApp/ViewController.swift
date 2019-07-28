//
//  ViewController.swift
//  CountryListApp
//
//  Created by Kailash Dabhi on 30/06/19.
//  Copyright © 2019 Kailash Dabhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {
    var countryList : CountryList = []
    var selectedCountry : CountryListElement?
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let country = countryList[indexPath.row]
        let cell =   tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!CountryTableViewCell
        cell.country = country;
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedCountry = countryList[indexPath.row]
        performSegue(withIdentifier: "detail", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        URLSession.shared.countryListTask(with: url!){
            countryList,response,error in
            guard let countryList = countryList else {
                return
            }
            DispatchQueue.main.async {
                self.countryList = countryList
                self.tableView.reloadData()
            }
            }.resume()
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detail"{
            let destination = segue.destination as! CountryDetailViewController
            let  index = tableView.indexPathForSelectedRow?.row
                destination.country = countryList[index!]

        }
    }
}

