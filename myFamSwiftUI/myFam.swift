//
//  myFam.swift
//  myFamSwiftUI
//
//  Created by icos on 29.10.2025.
//

import Foundation
import SwiftUI
import CoreLocation

struct myFam: Identifiable {
    
    var id: UUID = UUID()
    var isim : String
    var meslek: String
    var iliski: String
    var gorsel: String
    var phone: String?
    var email: String?
    var dogumGunu : String
    var koordinat: Koordinat
    
    var koordinat_lokasyon: CLLocationCoordinate2D { // veriyi haritanın anlayacağı dile çevirdik
            CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
        }
    
}

struct Koordinat {
    var latitude: CLLocationDegrees // enlem aldık
    var longitude: CLLocationDegrees // boylam aldık
}

let dad = myFam(isim: "Tekin K.", meslek: "Policeman", iliski: "My Dad", gorsel: "dad",phone: "05553452345",email: "tekin.k@gmail.com", dogumGunu: "12.06.1974", koordinat: Koordinat(latitude:  39.919474, longitude: 32.853030))

let mom = myFam(isim: "Zehra K.", meslek: "nursing assistant", iliski: "My Mom", gorsel: "mom",phone: "05451233445",email: "zehra.k@gmail.com", dogumGunu: "10.03.1981", koordinat: Koordinat(latitude: 39.919474, longitude: 32.853030))

let bro = myFam(isim: "Alpi K.", meslek: "Student", iliski: " My Brother", gorsel: "bro",phone: "05355676756", email: "alpi.k@gmail.com", dogumGunu: "15.11.2010", koordinat: Koordinat(latitude: 39.919474, longitude: 32.853030))

let sis1 = myFam(isim: "İlo Ç.", meslek: "Computer Engineer", iliski: "Sister from another mother", gorsel: "sis1",phone: "05524567654", email: "ilo.c@gmail.com", dogumGunu: "25.05.2003", koordinat: Koordinat(latitude: 38.418872, longitude: 27.128710))

let sis2 = myFam(isim: "Zude K.", meslek: "Teacher", iliski: "Sister from another mother", gorsel: "sis2",phone: "05562345678", email: "zude.k@gmail.com", dogumGunu: "01.11.2001", koordinat: Koordinat(latitude: 38.754951, longitude: 30.537614))

let myFams: [myFam] = [dad, mom, bro, sis1, sis2]

