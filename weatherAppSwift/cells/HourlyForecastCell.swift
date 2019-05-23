//
//  HourlyForecastCell.swift
//  weatherAppSwift
//
//  Created by Ibrahima DANSOKO on 22/05/2019.
//  Copyright © 2019 Benjamin Ibrahima. All rights reserved.
//

import UIKit

class HourlyForecastCell: UITableViewCell {
    
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var temperature: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var humidity: UILabel!
    
    func configure(withWeather weatherIcon: String, temperature: Double, time: Int, humidity: Double) {
        self.weatherIcon.image = UIImage(named: weatherIcon)
        self.temperature.text = "\(temperature)°C"
        self.time.text = "\(time)"
        self.humidity.text = "\(humidity)"
    }
    
}
