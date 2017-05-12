//
//  WeatherTableViewCell.swift
//  weatherApp
//
//  Created by Vatsal Rustagi on 5/11/17.
//  Copyright © 2017 Vatsal Rustagi. All rights reserved.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var highTempLabel: UILabel!
    @IBOutlet weak var lowTempLabel: UILabel!
    
    func configureCell(forecast: Forecast){
        lowTempLabel.text = forecast.lowTemp
        highTempLabel.text = forecast.highTemp
        weatherLabel.text = forecast.weatherType
        dayLabel.text = forecast.date
        weatherIcon.image = UIImage(named: forecast.weatherType)
    }

}
