//
//  Contact.swift
//  My Contact List
//
//  Created by Duy Huynh on 2/8/24.
//

import Foundation
import SwiftUI

struct Contact{
    var name: String
    var email: String
    var phone: String
    
    var ImageName: String
    var image: Image{
        Image(ImageName)
    }
}
