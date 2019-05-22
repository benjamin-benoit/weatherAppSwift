//
//  HeaderCell.swift
//  weatherAppSwift
//
//  Created by Ibrahima DANSOKO on 22/05/2019.
//  Copyright © 2019 Benjamin Ibrahima. All rights reserved.
//

import UIKit

class HeaderCell: UITableViewCell {
  
    @IBOutlet var la: UILabel!
    
    func configure(weather: String) {
        self.la.text = weather
    }
    
}
