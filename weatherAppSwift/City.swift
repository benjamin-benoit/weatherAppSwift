//
//  City.swift
//  weatherAppSwift
//
//  Created by Benjamin BENOIT on 22/05/2019.
//  Copyright © 2019 Benjamin Ibrahima. All rights reserved.
//

import CoreLocation

class City: Decodable {
    var name: String
    var coordinates: CLLocationCoordinate2D
}
