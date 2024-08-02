//
//  Contact.swift
//  My Contact List
//
//  Created by Duy Huynh on 2/8/24.
//

import Foundation
import SwiftUI
import MapKit

struct Contact: Identifiable{
    //Everytime create a new contact, this generate a very long string which guarantee everything is unique
    var id = UUID()
    var name: String
    var email: String
    var phone: String
    
    var ImageName: String
    var image: Image{
        Image(ImageName)
    }
    var locationCoordinate: CLLocationCoordinate2D
}
