//
//  mapView.swift
//  myFamSwiftUI
//
//  Created by icos on 29.10.2025.
//



// Bunu kullanırsak iosun bazı sürümlerinde mapi kullanamayız bu yüzden bu dosyayı kullanmayacağız not olsun diye ekledim.



import SwiftUI
import MapKit

struct mapViewOrnekKullanım: View {
    
    @State var region = MKCoordinateRegion(
        center:myFams[0].koordinat_lokasyon,
        span:MKCoordinateSpan( latitudeDelta: 0.5,
        longitudeDelta: 0.5))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

#Preview {
    mapViewOrnekKullanım()
}
