//
//  WeatherViewController.swift
//  weatherAppSwift
//
//  Created by Benjamin BENOIT on 22/05/2019.
//  Copyright © 2019 Benjamin Ibrahima. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit
import Alamofire

class WeatherViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var location: CLLocationCoordinate2D?
    var weather: Weather?


    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        self.tableView.register(UINib.init(nibName: "HeaderCell", bundle: nil), forCellReuseIdentifier: "headerCell")
        requestWeather()
    }
    
    func requestWeather() {
        RequestManager.getMeteo(latitude: "\(location?.latitude ?? 48.856613)", longitude: "\(location?.latitude ?? 2.352222 )", success: { (data) in
            let decoder = JSONDecoder()
            self.weather = (try? decoder.decode(Weather.self, from: data))
            self.tableView.reloadData()
        }) { (error) in
            print(error)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell", for: indexPath) as? HeaderCell {
            cell.configure(withWeather: weather?.currently.icon ?? "", temperature: weather?.currently.temperature ?? 0, summary: weather?.currently.summary ?? "")
            return cell
        }
        return UITableViewCell()
    }
}
