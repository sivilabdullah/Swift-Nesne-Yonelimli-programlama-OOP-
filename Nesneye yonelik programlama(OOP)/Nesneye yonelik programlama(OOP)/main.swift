//
//  main.swift
//  Nesneye yonelik programlama(OOP)
//
//  Created by abdullah's Monterey  on 11.10.2022.
//

import Foundation

//
//  main.swift
//  objected oriented programming
//
//  Created by abdullah's Monterey  on 8.10.2022.
//

///FIELDS  WEAK STRONG KONUSU
/*
class ayak{
    var uzunluk: Float?
}
class sandalye
{
    var bacaksayisi : Int?
    var model : String?
    var a = ayak()
}

var sandalye1 = sandalye()
sandalye1.bacaksayisi = 5
print(sandalye1.bacaksayisi)

var sandalye2 = sandalye()
sandalye2.a.uzunluk = 10.5
sandalye2.bacaksayisi = 3
print(sandalye2.bacaksayisi)
print(sandalye2.a.uzunluk)
*/

///ENCAPSULATION
/*
class Kare
{
    var kenarclassici : Float = 0 //class ici icin olusturulmus kare degiskeni
    var cevreclassici : Float = 0 //class ici icin olusturulmus kare degiskeni
    
    
    
    var kenar : Float //class disi icin olusturulmus kare degiskeni
    {
            //degiskenin okunmasi icin get ,degistirilmesi icin set kullaniriz
            get
            {
                return kenarclassici
            }
            
            
            set(yenikenar) //set yanina parantez ile yeni degisken olusturduk
            {
                if yenikenar > 0
                {
                    kenarclassici = yenikenar
                }
                else
                {
                    kenarclassici = 0
                }
                
                cevreclassici = kenarclassici * 4
                
            }
    }
    
    
    
    var cevre : Float //class disi icin olusturulmus kare degiskeni
    {
            get
            {
               return kenarclassici * 4
            }
    }
    
    func BilgilerGoster()
    {
        print("kenar uzunlugu : \(kenarclassici)\nCevre : \(cevreclassici)")
    }
}*/

/*
///fonskiyonlar ile bilgi gosterme



var kare = Kare()
kare.kenar = 10
print(kare.kenar)
print(kare.cevre)


///tanimlama
func FonksiyonAdi()
{
    
}

//ornek
func yaz()
{
    print("Fonksiyon ici")
}

yaz()
//yukarida kare classinda fonksiyon tanimladik ve asagida cagirdik
kare.BilgilerGoster()

var kare2 = Kare()
kare2.kenar=20
kare2.BilgilerGoster()//fonksiyon
*/

/*
var sayilar : [Float] = [1,2,35,45,5,4,7]// burada liste belirledik

func enkucuk()
{
    var enkck : Float = sayilar[0] //en kucuk degeri bulmak icin sayilar kumesinin icine girdik
    for sayi in sayilar
    {
        if sayi < enkck//listenin ici yani enkck degiskeni kendinden kucuk bir deger olursa kendine o deger atanacak ve listede en kucuk sayi olacak
        {
            enkck = sayi
        }
    }
    print("en kucuk sayi :\(enkck)")
}

 func enbuyuk()
 {
     var enbyk : Float = sayilar[0]
     for sayi in sayilar
     {
         if sayi > enbyk
         {
             enbyk = sayi
         }
     }
         print("en buyuk sayi :\(enbyk)")
 }

func ortalama()
{
    let ortalama = sayilar.reduce(0){$0+$1} / Float(sayilar.count)
    print("ortalama :\(ortalama)")
}

func degerler()
{
    enkucuk()
    enbuyuk()
    ortalama()
}

degerler()
*/

///fonksiyona parametre ekleme
/*
func f1(p1 : String)
{
    print(p1)
}

f1(p1:  "text")

func f2 (p1 : String, p2 : Int)
{}

func f3(ad p1 : String, _ p2 : String)
{
    print(p1,p2)
}

f3(ad: "mehmet","ahmet")

*/
/*

///fonsiyonun
///geri dondurulmesi
 ///**********
    
    func  getdeger() -> String
    {
    return "Fonksiyon ici deger"
    }
    
    var gelendeger = getdeger()
    print(gelendeger)
    
    
    func topla(sayi1 : Int , sayi2 :Int) -> Int
    {
    return sayi1 + sayi2
    }
    
    var sayi2 = 45
    var toplam = topla(sayi1: 1, sayi2: sayi2)
    print(toplam)
    
    //fonsiyonun
    ///geri dondurulmesi 2
    ///**********
       func CokluDeger() ->(d1: String, d2: Int)
       {
       return ("",16)
       }
       func karsilastirma(sayi1 : Int , sayi2 : Int)->(kucuk : Int, buyuk : Int)
       {
       if sayi1 < sayi2
       {
       return (sayi1,sayi2)
       }
       else
       {
       return(sayi2,sayi1)
       }
       }
       
       var kars = karsilastirma(sayi1: 20, sayi2: 10)
       print("kucuk sayi :\(kars.kucuk)","buyuk sayi :\(kars.buyuk)")
    */
    */*/
/*

    ///fonksiyon lab 2
    
func puanhesapla (puanlar : [Int])-> (dusuk : Int , yuksek : Int , toplam : Int)
{
    var dusuk = puanlar[0]
    var yuksek = puanlar[0]
    var toplam = 0

    for puan in puanlar
    {
        if  puan < dusuk
        {
            dusuk = puan
        }
        else if puan > yuksek
        {
          yuksek = puan
        }
        toplam += puan
    }
            
    return(dusuk, yuksek, toplam)
}

///ikinci
///ornek
///tek far int... ve sonuc2 icindeki koseli parantezin kaldirilmasi !!!!
func puanhesapla2 (puanlar : Int...)-> (dusuk : Int , yuksek : Int , toplam : Int)
{
    var dusuk = puanlar[0]
    var yuksek = puanlar[0]
    var toplam = 0

    for puan in puanlar
    {
        if  puan < dusuk
        {
            dusuk = puan
        }
        else if puan > yuksek
        {
          yuksek = puan
        }
        toplam += puan
    }
            
    return(dusuk, yuksek, toplam)
}

let sonuc = puanhesapla(puanlar: [2,3,45,78,65])
//elimizde liste yoksa sagidaki varsa yukaridakini kullaniyoruz
let sonuc2 = puanhesapla2(puanlar: 2,3,45,78,65)
print("en dusuk :\(sonuc.dusuk)")
print ("en buyuk : \(sonuc.yuksek)")
print("toplam : \(sonuc.toplam)")

*/

/*
///fonksiyon overload
///fonksiyonu asiri yukleme
///bu 3 islem ayni fonksiyon adina ait normalde hat avermesi gerekirken iceriklerinin farkli olmasi geri dondurme islemlerinin farkli olmasi degisken adlarinin farkli olmasi gibi sebeblerden hata vermedi
func topla(sayi1 : Int , sayi2 : Int)
{
    var toplam = sayi1 + sayi2
    print(toplam)
}

func topla(sayi1 : Int , sayi2 : Int)-> Int
{
    return sayi1 + sayi2
}
func topla(sayi1 : Int , sayi2 : Int, sayi3 : Int)-> Int
{
    return sayi1 + sayi2 + sayi3
}
var d : Int = topla(sayi1: 1, sayi2: 2)
print(d)
*/

///fonksiyon closure konusu
///closure ile fonksiyonlarin icerisine islevleri gonderilebilir
/*
 ///1
func f1(c :()->())
{
    c()
}
f1(c:  {
    print("ic")
})


///2
func f2(sonuc : (_ p1 : Int)->())
{
    var d = 23
    //islemler
    sonuc(d)
    
}

f2(sonuc: {
    deger in
    print(deger)
})



*/





///fonksiyon
///parametreler
///fonksiyonlarin parametre olarak fonksiyon almasina denir.
///
/*
func f1(p1 : Int)
{
    print(p1)
}

func f2 (funk : (Int)->())
{
    funk(3)
}

f2(funk: f1)


func adminozellik()
{
    print("admin ozellikleri")
}
func kullaniciozellik()
{
    print("kullanici ozellikleri")
}

func yukle (ozellikyukle : ()->())
{
    print("verileri yukle")
    print("temel ayarlamalar yap")
    ozellikyukle()
}


var kullaniciTipi = "Kullanici"
if kullaniciTipi == "Admin"
{
    yukle {
        yukle(ozellikyukle: adminozellik)
    }
}
else {
    yukle {
        yukle(ozellikyukle: kullaniciozellik)
    }
}
*/
/*
///ic fonksiyon dondurme
///fonksiyonlarin fonksiyonlari dondurme islemi
///
func f1()->(Int)->(Float)
{
    func localf1(d1: Int)->Float
    {
        return Float(d1)
    }
    return localf1
}

var fic = f1()
fic(1)
print(fic)
*/
/*
///
///
///
///fonksiyon uygulama yapimi
func islemyap(islemtipi : String) -> (Float,Float)->Float
{
    func topla(sayi1 : Float, sayi2 : Float)-> Float
    {
        return sayi1 + sayi2
    }
    func cikar(sayi1 : Float, sayi2 : Float)-> Float
    {
        return sayi1 - sayi2
    }
    
    if islemtipi == "topla"
    {
        return topla
    }
    else
    {
        return cikar
    }
    
}

var islemfonksiyon = islemyap(islemtipi: "topla")
var sonuc = islemfonksiyon(5,4)
print(sonuc)
var sonuc2 = islemfonksiyon(10,6)
print(sonuc2)
islemfonksiyon = islemyap(islemtipi: "cikar")
var sonuc3 = islemfonksiyon(5,4)
print(sonuc3)
var sonuc4 = islemfonksiyon(10,6)
print(sonuc4)
*/
/*
///Initialization
///nesnenin bellege cikartilmasi islemidir
///nesnenin initilaze edilirken nasil yonetilecegini gorduk
///disaridan nasil deger alinir onu ogrendik

class Kare
{
    var kenaruzunluk : Int
    /*
    init()
    {
        kenaruzunluk = 0
    }*/
    
    init(ku : Int)
    {
        kenaruzunluk = ku
    }
}

var kare2 = Kare(ku: 10)
print(kare2.kenaruzunluk)
*/
//class'lari kullanarak kendi tiplerimizi olusturup  bu tipler uzerinden nesne olusturma ve nesneleri nasil kullanabilecegimizi gorecegiz

// AD ,soyad ,kimlik bilgileri sicil numarasi bulunan personel listesi olustur listeye eklenen personellerin bilgilerini ekrana yazdirma
/*
class Personel
{
    var Ad : String
    var Ikinciad : String?
    var Soyad : String
    var Kimlikno : String
    var Sicilno : Int
    
    init(ad: String, ikinciad : String? = nil , soyad : String , kimlikno : String , sicilno : Int)
    {
        Ad = ad
        Ikinciad = ikinciad
        Soyad = soyad
        Kimlikno = kimlikno
        Sicilno = sicilno
    }
    func bilgileriyazdir()
    {
        print("Ad       :\(Ad)")
        print("Ikinciad :\(String(describing: Ikinciad))")
        print("Soyad    :\(Soyad)")
        print("Kimlikno :\(Kimlikno)")
        print("Sicilno  :\(Sicilno)\n")
    }
}

var personellistesi = [Personel]()
var personel = Personel(ad: "ali", ikinciad: nil, soyad: "atay", kimlikno: "21869065108", sicilno: 125412545)
personellistesi.append(personel)

personel = Personel(ad: "ahmet", soyad: "sivil", kimlikno:" 154885415413", sicilno: 1324654487)
personellistesi.append(personel)

for p in personellistesi
{
    p.bilgileriyazdir()
}
*/


///STRUCT KONU ANLATIMI
///DEGER TIPLIDIR
///STRUCT DEGER TIPLIDIR
///TURETILEMEZ
///TYPE CASTING (TIP KONTROLU YAPILAMAZ)
///AYNI NESNEYE FARKLI REFERANSLAR ILE ILETISIM

struct structadi
{
    
}

struct dikdortgen
{
    var kisakenar : Float = 0
    var uzunkenar : Float?
}

class dikdortgenc
{
    var kisakenar : Float
    var uzunkenar : Float
    init()
    {
        uzunkenar = 0
        kisakenar = 0
    }
}
var dc = dikdortgenc()
dc.kisakenar = 33
print(dc)

var ds = dikdortgen()
ds.kisakenar = 33
print(ds)


