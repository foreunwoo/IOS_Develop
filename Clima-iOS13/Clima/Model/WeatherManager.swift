//
//  WeatherManager.swift
//  Clima
//
//  Created by eunwoo on 2020/10/26.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherUrl = "https://api.openweathermap.org/data/2.5/weather?appid=0380287a176b477dac02999afa86e729&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherUrl)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        // 1. url 생성
        if let url = URL(string: urlString) {
            
            // 2. url 세션 생성
            let session = URLSession(configuration: .default)
            
            // 3. 태스크 생성
            let task = session.dataTask(with: url) { (data, reponse, error) in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    let dataString = String(data: safeData, encoding: .utf8)
                    print(dataString!)
                }
            }
            
            // 4. 태스크 실행
            task.resume()
        }
        
    }
    
}
