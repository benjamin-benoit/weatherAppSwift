//
//  WeatherViewController.swift
//  weatherAppSwift
//
//  Created by Benjamin BENOIT on 22/05/2019.
//  Copyright © 2019 Benjamin Ibrahima. All rights reserved.
//

import UIKit
import CoreLocation

class WeatherViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var location: CLLocationCoordinate2D = CLLocationCoordinate2D()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        print(location)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
