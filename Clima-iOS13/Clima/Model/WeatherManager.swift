//
//  WeatherManager.swift
//  Clima
//
//  Created by eunwoo on 2020/10/26.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherUrl = "api.openweathermap.org/data/2.5/find?apppid=0380287a176b477dac02999afa86e729&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherUrl)&q=\(cityName)"
        print(urlString)
    }
}
