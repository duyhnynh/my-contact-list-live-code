//
//  MapView.swift
//  My Contact List
//
//  Created by Duy Huynh on 2/8/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    let myLocation : CLLocationCoordinate2D
        var body: some View {
            Map(initialPosition: .region(MKCoordinateRegion(
                center: myLocation,
                span: MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
            ))){
                Marker("My House", coordinate: myLocation)
            }
        }
}

#Preview {
    MapView(myLocation: CLLocationCoordinate2D(latitude: 10.729308219107374, longitude: 106.69582364935087))
}
