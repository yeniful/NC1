//
//  MainMapView.swift
//  test103
//
//  Created by Yeni Hwang on 2022/04/27.
//

import SwiftUI
import MapKit

struct MainMapView: View {
    
    @State private var region =
        MKCoordinateRegion(
            center:
                CLLocationCoordinate2D(
                    latitude : 36.015_6822,
                    longitude: 129.322_4559),
                latitudinalMeters: 3_000,
                longitudinalMeters: 3_000
    )
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
