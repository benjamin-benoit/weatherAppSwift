//
//  ExtraInfosCell.swift
//  weatherAppSwift
//
//  Created by Ibrahima DANSOKO on 22/05/2019.
//  Copyright © 2019 Benjamin Ibrahima. All rights reserved.
//

import UIKit

class ExtraInfosCell: UITableViewCell {


    @IBOutlet weak var humidity: UILabel!
    @IBOutlet weak var windSpeed: UILabel!
    @IBOutlet weak var pressure: UILabel!
    @IBOutlet weak var uvIndex: UILabel!
    
    func configure(withWeather humidity: Double, windSpeed: Double, pressure: Double, uvIndex: Int) {
        self.humidity.text = "\(Int(humidity*100))%"
        self.windSpeed.text = "\(Int(windSpeed)) km/h"
        self.pressure.text = "\(Int(pressure))hPa"
        self.uvIndex.text = "\(uvIndex)"
    }
    
}
