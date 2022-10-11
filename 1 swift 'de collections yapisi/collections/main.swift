//
//  main.swift
//  collections
//
//  Created by abdullah's Monterey  on 6.10.2022.
//
/*
import Foundation

var sayilar = [1,2,3,4,5,6]
var ksayilar = sayilar.filter{ $0 < 4 }
print(sayilar)
print(ksayilar)


var meyveler = ["elma","armut","kivi","muz"]

for index in 0..<meyveler.count
{
    print((index),meyveler[index])
}
//listeden bir degerin index degerini ekrana yazma
var meyveler = ["elma","armut","kivi","muz"]
var meyve = "armut"
for index in 0..<meyveler.count{
    if meyveler[index] == meyve{
        print(index,"index numarali meyve ",meyve)
    }
}
//listeyi degere atamma listeye degil
var meyveler = ["elma","armut","kivi","muz"]
var istenen = "armut"

for meyve in meyveler {
    if meyve == istenen{
        print("istenen meyve : " + meyve)
    }
}


///Dictionary
var dic : [String : String]?//parantez ici ilk string key'in veri tipi ikincisi ise value'nun veri tipidir
print(dic as Any)

var dic2 = [String : String]()
print(dic2)

var dic3 = [
    1 : "Deger 1",
    2 : "Deger 2"
]

print(dic3[1] as Any)


//Dictionary Filtreleme

var sayilar = [
    1:"bir",
    2:"iki",
    3:"uc",
    4:"dort"
]
sayilar[5] = "Bes"

var filtsayilar = sayilar.filter{(anahtar,deger) -> Bool in
    return anahtar >= 0
}
print(filtsayilar)

//dictionary ile liste kullanimi

var Grupsay = [
    "teksayilar" : [1,3,5,7,9],
    "ciftsayilar" : [2,4,6,8]
]

var teksayilar = Grupsay["teksayilar"]
print(teksayilar)
*/

/*
var kisilistesi = [

    1 : ["abdullah","sivil",24,"Bursa"],
    2 : ["ahmet","sivil",20,"Gaziantep"],
    3 : ["musa","dilekci",22,"sirnak"]
]
var filtrekisi = kisilistesi.filter{
    (anahtar,deger) -> Bool in return
    anahtar >= 0
}

var kisiler = [[String:String]]()

var kisi1 = [
    "ad"    : "Ahmet",
    "soyad" : "Sivil",
    "yas"   : "21",
]
var kisi2 = [
    "ad"    : "abdullah",
    "soyad" : "Sivil",
    "yas"   : "21",
]

kisiler.append(kisi1)
kisiler.append(kisi2)
//duzensiz
//print(kisiler)

for kisi in kisiler
{
    print("Ad : \(kisi["ad"]!)")
    print("Soyad : \(kisi["soyad"]!)")
    print("Yas : \(kisi["yas"]!)")
    print(" ")
}



//liste uzerinde degisiklik yaparak yeni liste olusturur map
var sayilar = [1,2,3,4,5,6,7]
var maddebaslik = [String]()

maddebaslik = sayilar.map{ (sayi) -> String in
    return "\(sayi) -)"
}


*//*
//map ve contact map farki

let skorlar = ["1","2","uc","4"]
let mapskor : [Int?] = skorlar.map{str in Int(str)}
print (mapskor)
let contactmapskor: [Int] = skorlar.compactMap{str in Int(str)}
print(contactmapskor)
*/
/*
//flatmap ve redius
let liste  = [["merhaba"] , ["dunya"]]
let birlesik = liste.flatMap({$0})
print(birlesik)
//reduce
let liste2 = ["mer","ha","ba"]
let birlesik2 = liste2.reduce(" " , +)
print(birlesik2)
 
//redius map
var notlar = [[Float]]()
var ortalamalar = [Float]()
var durum = [String]()
notlar.append([80,10,40])
notlar.append([60,10,70])

for i in 0..<notlar.count
{
    let ortalama = notlar[i].reduce(0){$0 + $1} / Float(notlar[i].count)
    
    ortalamalar.append(ortalama)
}

durum = ortalamalar.map({
    
    if $0 < 50
    {
        return "Kaldi"
    }
    else{
        return "Gecti"
    }
    
})
print("ortalamalar : \(ortalamalar)")
print("Durumlar : \(durum)")
*/
/*
var liste = [1,2,3,4]
liste.append(1)
print(liste[4])
*/
