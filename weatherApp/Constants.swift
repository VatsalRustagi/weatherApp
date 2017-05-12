//
//  Constants.swift
//  weatherApp
//
//  Created by Vatsal Rustagi on 5/11/17.
//  Copyright © 2017 Vatsal Rustagi. All rights reserved.
//

import Foundation

let CURRENT_WEATHER_BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let FORECAST_BASE_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?"
let LATTITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "5bd213fd7a705e1d56abf0de2c9c08bd"
let COUNT = "&cnt=10"
typealias DownloadComplete = () -> ()
