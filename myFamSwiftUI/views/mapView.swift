//
//  mapView.swift
//  myFamSwiftUI
//
//  Created by icos on 29.10.2025.
//

import SwiftUI
import MapKit

struct mapView: UIViewRepresentable {
    
    var coordinate : CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) { // burada da mkmapview ile çalışması gerektiğini belirttik
        
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        //  Haritanın yakınlaştırma seviyesini (zoom'unu) belirleyen span'i oluşturduk.
        let region = MKCoordinateRegion(center: coordinate, span: span)
        // Haritanın merkez noktasını ve zoom seviyesini birleştirerek yeni coğrafi bölgeyi tanımladık.
        
        uiView.setRegion(region, animated: true)
        // Mevcut MKMapView'a (uiView), yumuşak bir animasyonla yeni bölgeyi atamasını söyledik.
        
        uiView.removeAnnotations(uiView.annotations) // haritada bulunan önceki işaretcileri sildik
            
            //  Yeni pin nesnesini oluşturduk.
            let newPin = MapPin(
                title: "Konum",
                subtitle: "Seçilen Kişinin Yeri",
                coordinate: coordinate
            )
            
            // Yeni pini haritaya ekleyin.
            uiView.addAnnotation(newPin)
        
        
        
    } // SwiftUI'dan gelen yeni 'coordinate' değeri değiştiğinde haritayı güncelleyeceğimiz fonksiyondur.
    
    
    
    func makeUIView(context: Context) -> MKMapView  { // mkmapview döndüreceğimizi belirttik ve şimdi onu oluşturacağız
        
        MKMapView(frame: .zero)
        // UIKit View'ı döndürüyoruz. Boyutlandırma (frame) SwiftUI tarafından yönetilecektir.
        }
        
    } // Bu fonksiyon, MKMapView UIKit bileşenini SwiftUI için ilk kez oluşturur ve döndürür.
    


    class MapPin: NSObject, MKAnnotation {
        let title: String?
        let subtitle: String?
        let coordinate: CLLocationCoordinate2D
        
        init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D) {
            self.title = title
            self.subtitle = subtitle
            self.coordinate = coordinate
        }
    }
    


#Preview {
    mapView(coordinate: myFams[0].koordinat_lokasyon)
}
