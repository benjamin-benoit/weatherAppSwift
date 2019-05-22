//
//  Weather.swift
//  weatherAppSwift
//
//  Created by Ibrahima DANSOKO on 22/05/2019.
//  Copyright © 2019 Benjamin Ibrahima. All rights reserved.
//

import Foundation

struct Weather: Decodable {
    var currently: Currently
    
}
struct Currently : Decodable {
    var icon: String
    var temperature: Double
    var summary: String
    var uvIndex: Double
    var windSpeed: Double
    var humidity: Double
    var hourly: Hourly
    var daily : Daily
}
struct Hourly:Decodable {
    var summary: String
    var data : [Datas]
}
struct Datas:Decodable {
    var time: Int
    var icon: String
    var humidity: Double
    var pressure: Double
}

struct Daily: Decodable {
    var icon: String
    var data: [DataDaily]
}
struct  DataDaily: Decodable {
    var time: Int
    var icon: String
    var temperatureMin: Double
    var temperatureMax: Double
}
