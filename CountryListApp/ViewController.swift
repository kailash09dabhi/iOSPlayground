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
        let cell =   UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = countryList[indexPath.row].name
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let session = URLSession.shared
        session.countryListTask(with: url!){countryList,response,error in
            self.countryList = countryList!;
            self.tableView.reloadData()
            
            }.resume()
    }

}

