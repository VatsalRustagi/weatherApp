//
//  Forecast.swift
//  weatherApp
//
//  Created by Vatsal Rustagi on 5/11/17.
//  Copyright © 2017 Vatsal Rustagi. All rights reserved.
//

import Foundation
import Alamofire

class Forecast{
    
    private var _date: String!
    private var _weatherType: String!
    private var _highTemp: String!
    private var _lowTemp: String!
    
    var date: String{
        if _date == nil{
            _date = ""
        }
        return _date
    }
    
    var weatherType: String{
        if _weatherType == nil{
            _weatherType = ""
        }
        return _weatherType
    }
    
    var highTemp: String{
        if _highTemp == nil{
            _highTemp = ""
        }
        return _highTemp
    }
    
    var lowTemp: String{
        if _lowTemp == nil{
            _lowTemp = ""
        }
        return _lowTemp
    }
    
    init(weatherDict: Dictionary<String, Any>) {
        if let temp = weatherDict["temp"] as? Dictionary<String, Any>{
            if let min = temp["min"] as? Double{
                // String(format: "%.2f", Float(temp - 273.15))
                let temperature = String(format: "%.1f", Float(min - 273.15))
                self._lowTemp = ("\(temperature)")
            }
            if let max = temp["max"] as? Double{
                let temperature = String(format: "%.1f", Float(max - 273.15))
                self._highTemp = ("\(temperature)")
            }
        }
        if let date = weatherDict["dt"] as? Double{
            let unixConvertedDate = Date(timeIntervalSince1970: date)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.dateFormat = "EEEE"
            dateFormatter.timeStyle = .none
            self._date = unixConvertedDate.dayOfTheWeek()
        }
        if let weather = weatherDict["weather"] as? [Dictionary<String,Any>]{
            if let main = weather[0]["main"] as? String{
                self._weatherType = main
            }
        }
    }
    
    init(){
        
    }
}

extension Date{
    func dayOfTheWeek() -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}


