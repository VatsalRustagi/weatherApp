//
//  Location.swift
//  weatherApp
//
//  Created by Vatsal Rustagi on 5/11/17.
//  Copyright © 2017 Vatsal Rustagi. All rights reserved.
//

import CoreLocation

class Location{
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
    
}
