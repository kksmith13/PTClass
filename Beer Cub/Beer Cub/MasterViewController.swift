//
//  ViewController.swift
//  Beer Cub
//
//  Created by Kyle Smith on 11/6/18.
//  Copyright © 2018 smithcoding. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
    
    let breweries = [Brewery(title: "Lakeside Brewery", location: "By The Lake Ave, Laketown, Oceanplace", image: UIImage(named: "brewery")!, hours: "5:00am-12:00pm"),
                     Brewery(title: "Space Brewery", location: "Outer Space, Spacetown, Milky Way", image: UIImage(named: "brewery2")!, hours: "Spacetime hours")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.tableFooterView = UIView(frame: .zero)
        navigationController?.navigationBar.topItem?.title = "Brewery List"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return breweries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = breweries[indexPath.row].title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DetailViewController(brewery: breweries[indexPath.row])
        navigationController?.pushViewController(controller, animated: true)
    }
}

class Brewery {
    let title: String
    let location: String
    let image: UIImage
    let hours: String
    
    
    init(title: String, location: String, image: UIImage, hours: String) {
        self.title = title
        self.location = location
        self.image = image
        self.hours = hours
    }
}

