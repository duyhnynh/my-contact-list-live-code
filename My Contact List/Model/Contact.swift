//
//  Contact.swift
//  My Contact List
//
//  Created by Duy Huynh on 2/8/24.
//

import Foundation
import SwiftUI
import MapKit


struct Contact: Identifiable, Codable{
    //Everytime create a new contact, this generate a very long string which guarantee everything is unique
//    var id = UUID()
    var id: Int
    var name: String
    var email: String
    var phone: String
    
    var coordinates: Coordinates
    
    
    var ImageName: String
    var image: Image{
        Image(ImageName)
    }
    
    //I will try using this as a computed property, actually a getter
    var locationCoordinate: CLLocationCoordinate2D //this is not decodable
    //this is the computed property, it like a getter, you calling it to get something from it
    {
        //In our app, we are refer to the locationCooordinates, so we have to provide somthing
        //Whenever my app calling "locationCoordinate", run the closure
        //So the closure will return exactly object "CLLocationCoordinate2D"
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
        //I can get the latitude and longtitude by calling coordinates which is the property of itself
    }
}

// MARK: - Coordinates
struct Coordinates: Codable {
    let latitude, longitude: Double
}
