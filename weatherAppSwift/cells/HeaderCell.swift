//
//  HeaderCell.swift
//  weatherAppSwift
//
//  Created by Ibrahima DANSOKO on 22/05/2019.
//  Copyright © 2019 Benjamin Ibrahima. All rights reserved.
//

import UIKit
import SDWebImage

class HeaderCell: UITableViewCell {
  
    
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var temperature: UILabel!
    @IBOutlet weak var cloud: UILabel!
    @IBOutlet weak var summary: UILabel!
    
    func configure(withWeather weather: Weather) {
        weatherIcon.image = UIImage(named: weather.currently.icon)
        temperature.text = String(weather.currently.temperature)
        cloud.text = String(weather.currently.humidity)
        summary.text = weather.currently.summary
    }
    
}
