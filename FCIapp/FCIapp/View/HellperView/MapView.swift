//
//  MapView.swift
//  fcInterApps
//
//  Created by Dima Kovrigin on 26.01.2023.
//

import MapKit
import SwiftUI

struct MapView: View {
    @State private var region = MKCoordinateRegion(
           center: CLLocationCoordinate2D(latitude: 55.7755238530469, longitude: 38.70827452698567),
           span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
       )

    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}


