//
//  detayView.swift
//  myFamSwiftUI
//
//  Created by icos on 29.10.2025.
//

import SwiftUI
import _MapKit_SwiftUI

struct detayView: View {
    
        var secilenkisi: myFam
        
        //  Arama Fonksiyonu
        func call() {
            if let phone = secilenkisi.phone,
               let url = URL(string: "telprompt:\(phone.filter("01234567898".contains))") {
                UIApplication.shared.open(url)
            }
        }
        
        // Mesaj Gönderme Fonksiyonu
        func textMessage() {
            if let phone = secilenkisi.phone,
               let url = URL(string: "sms:\(phone.filter("01234567898".contains))") {
                UIApplication.shared.open(url)
            }
        }
        
        // E-posta Gönderme Fonksiyonu
        func sendEmail() {
            if let email = secilenkisi.email,
               let url = URL(string: "mailto:\(email)") {
                UIApplication.shared.open(url)
            }
        }
        
        // Yol Tarifi Alma Fonksiyonu
    func getDirections() {
        // Koordinatları MKPlacemark'a dönüştürün
        let coordinate = secilenkisi.koordinat_lokasyon
        let destinationPlacemark = MKPlacemark(coordinate: coordinate)
        let destinationItem = MKMapItem(placemark: destinationPlacemark)
        
        // Hedefe yol tarifi isteği oluşturdu
        destinationItem.name = secilenkisi.isim
        
        let launchOptions = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
        
        // Apple Haritalar uygulamasını açın ve yol tarifini başlatın
        destinationItem.openInMaps(launchOptions: launchOptions)
    }
        
        
        var body: some View {
            
            VStack {
                
                    // map ekleme
                    mapView(coordinate: secilenkisi.koordinat_lokasyon)
                        .frame(height: UIScreen.main.bounds.height * 0.35)
                    
                    
                    // görsel ekleme
                    ozelGorselView(image: Image(secilenkisi.gorsel))
                        .frame(width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.height * 0.35, alignment: .center)
                        .offset(y: UIScreen.main.bounds.height * -0.20)
                    
                 // bilgi kartı
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text(secilenkisi.isim)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)

                    HStack {
                       
                        Label(secilenkisi.meslek, systemImage: "briefcase.fill")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Spacer()
                        
                       
                        Label(secilenkisi.iliski, systemImage: "person.2.fill")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding(.top, 5)

                    Divider()

                    HStack {
                        // Doğum Günü (String olduğu için Label ile gösterilebilir)
                        Label(secilenkisi.dogumGunu, systemImage: "calendar")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        
                        Spacer()
                       
                    }

                }
                .padding()
                .background(Color.white)
                .cornerRadius(12)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                .padding(.horizontal)
                .offset(y: -200)
                
                
                
                    
                    // HIZLI EYLEM BUTONLARI
                    HStack(spacing: 30) {
                        
                        // Arama Butonu
                        if secilenkisi.phone != nil {
                            ActionButton(iconName: "phone.fill", iconColor: Color.green, action: call)
                        }
                        
                        // Mesaj Butonu
                        if secilenkisi.phone != nil {
                            ActionButton(iconName: "message.fill", iconColor: Color.blue, action: textMessage)
                        }
                        
                        //E-posta Butonu
                        if secilenkisi.email != nil {
                            ActionButton(iconName: "envelope.fill", iconColor: Color.orange, action: sendEmail)
                        }
                        
                        //  Yol Tarifi Butonu
                        ActionButton(iconName: "car.fill", iconColor: Color.red, action: getDirections)
                        
                    }.padding(.horizontal)
                    .padding(.bottom, 20)
                    .offset(y: -170)
                }
            }
        
        }
    


#Preview {
    detayView(secilenkisi:myFams[0])
}
