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
/*
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

*/

///Struct Uygulama
///kare dikdortgen ve daire sekillerini structlar kullanarak modelleme
///
///
/*
struct dikdortgen
{
    var kisakenar : Float
    var uzunkenar : Float
    var ortak : Ortak
}

struct kare
{
    var kenar : Float
    var ortak : Ortak
}

struct daire
{
    var yaricap : Float
    var ortak : Ortak
}

struct Ortak
{
    var cevre : Float
    var alan : Float
}

var k = kare(kenar: 10, ortak: Ortak(cevre: 40, alan: 100))
var di = dikdortgen(kisakenar: 10, uzunkenar: 20, ortak: Ortak(cevre: 60, alan: 200))
//pi 3 alinacak
var da = daire(yaricap: 10, ortak: Ortak(cevre: 60, alan: 300))
print(k)
print(di)
print(da)
*/

///STRUCT MUTABLE YAPISI
///degistirelemeyen func degiskenlerini func oncesine mutating yazarak degistirebiliriz
/*
struct kare
{
    var kenar : Float
    var ortak : Ortak?
    
    mutating func ortakhesapla()
    {
        ortak = Ortak(cevre: kenar * 4 , alan: kenar * kenar)
    }
}

struct Ortak
{
    var cevre : Float
    var alan : Float
}

var k = kare(kenar: 100)
k.ortakhesapla()
print(k.ortak!.cevre)
*/

///static degisken ve fonksiyonlar
///sinif uzerinden fonksiyon ve fieldlara erisim
///
/*
class personel
{
    var Ad : String
    var Sicilno : Int
  static  var SonPersonelNo = 0
    init(ad: String) {
        Ad = ad
        Sicilno = personel.SicilHesapla()
    }
    static func SicilHesapla()->Int
    {
        SonPersonelNo += 1
        return SonPersonelNo
    }
    
    func BilgileriYaz()
    {
        print("ad : \(Ad)")
        print("sicil no : \(Sicilno)\n")
    }
}

var p1 = personel(ad: "ahmet")
p1.BilgileriYaz()
var p2 = personel(ad: "mehmet")
p2.BilgileriYaz()
*/


///Enum
///kod icerisindeki sabit degerlerin iceriginde ne oldugu bilinmese dahi ayni sekilde kullanilmasini saglar. okunabilir hale getirir.
///
///kullanici profilini yuklemezse default olarak kiz erkek durumuna gore resim yukleme
/*
enum cinsiyet : String
{
    case Erkek = "E"
    case Kadin = "K"
}

var c = cinsiyet.Kadin
if c == cinsiyet.Erkek
{
    print("erkek profil resmi kullan")
}
else
{
    print("kadin resmini kullan")
}


print(cinsiyet.Erkek)
print(cinsiyet.Erkek.rawValue)
*/

///------------------------KALITIM--------------------
///
//Kalitim sayesinde elimizde bulunan classlari daha kisa ve pratik sekilde gelistirebiliyoruz
//class olusturmak zorundayiz
/*
class kare : sekil // kalitim de sekil iki nokta class isminin yanina koyariz
{
    var kenar : Float
    init(k: Float)
    {
        kenar = k
    }
    func hesapla()
    {
        cevre = kenar * 4
    }
}

class dikdortgen : sekil
{
    var kisakenar : Float
    var uzunkenar : Float
    
    init(k : Float, u : Float)
    {
        kisakenar = k
        uzunkenar = u
    }
}

class sekil
{
    var cevre : Float?
    var alan : Float?
    init
    {}
    
}

var k = kare(k: 100)
k.hesapla()
print(k.cevre)

var d = dikdortgen(k: 100, u: 200)

*/


///KALITIM INITIALIZER ILISKISI
///yukaridaki ornek ile ;
///Kalitim alinan sinif ile kalitim alan sinifin contructore iliskileri ve birlikte kullanimini isleyecegiz
/*
class kare : sekil
{
    var kenar : Float
    init(k: Float)
    {
        kenar = k
        super.init(ks: 4)
    }
    func hesapla()
    {
        cevre = kenar * 4
    }
}

class dikdortgen : sekil
{
    var kisakenar : Float
    var uzunkenar : Float
    
    init(k : Float, u : Float)
    {
        kisakenar = k
        uzunkenar = u
        super.init()
    }
}

class sekil
{//birinci initin ici bos olabilir fakat ikinci bir initi kullanirken uygulama hangisini kullancagini bilmedigi icin hata alicaz bunu onlemek icin
    var kenarsayisi : Int?
    var cevre : Float?
    var alan : Float?
    init()
    {}
    init(ks : Int)
    {
        kenarsayisi = ks
    }
    
}

var k = kare(k: 100)
k.hesapla()
print(k.cevre ?? 11)

var d = dikdortgen(k: 100, u: 200)
print(d.kenarsayisi)
print(k.kenarsayisi)
*/
///KALITIM INITIALIZER ILISKISI
///uygulama ornegi
///
/*
class Calisan
{
    var SicilNo : Int
    var Adi     : String
    var Soyadi  : String
    init(sicilno : Int , adi : String , soyadi : String)
    {
        SicilNo = sicilno
        Adi = adi
        Soyadi = soyadi
    }
}

class Yonetici : Calisan
{
    var EkipListesi = [Calisan]()
}

class MudurYardimcisi : Yonetici
{
    var SorumlulukDepartmani : String?
}

class Yazilimci : Calisan
{
    var ProjeAdi : String?
    var ePosta   : String?
}

class TemizlikGorevlisi
{
    var GorevAlani : String?
}

class Mudur : Yonetici
{
    var Mudurluk : String?
}

var y = Yazilimci(sicilno: 134568, adi: "abdullah" , soyadi: "Sivil")
print(y.Adi)
print(y.Soyadi,y.SicilNo)

*/

///OVERRIDE KAVRAMI
///GECERSIZ KILMA ANLAMINDADIR
///Override , uretilen siniflarda Fonksiyonlari gecersiz kilma islemi icin kullanilir.
/*
class AnaSinif
{
    var D1 : Int
    init(d1: Int) {
        D1 = d1
    }
    
    func f1()
    {
        print("ana sinif")
    }
}

class AltSinif : AnaSinif
{
   // var D2 : Int
    /*
    init(d2 : Int)
    {
        super.init(D1: D2)
        D2 = d2
    }
     */
    
    override init(d1: Int) {
        super.init(d1: d1)
    }
    override func f1() {
        super.f1()// ana fonksiyondaki fonksiyonu ekrana dahil edebilmek icin cagirdik
        print("alt sinif")//override ana sinifdaki fonksiyonu iptal ederek buradaki fonksiyonu devreye sokuyor
    }
}

var a = AltSinif(d1: 10)
a.f1()
*/


///---------PROTOCOL KULLANIMI --------------------
///PROTOKOLLERI OLUSTURMA VE UYGULAMA
/// DIGER DILLERDE (INTERFACE ) DIYE GECER
///Protokoller, standartlari olusturup bu protokolleri kullanan yapilarda bu standartlarin calismasini saglar
/*
protocol p1
{
    var d1 : Int {get set}
    func f1()
    init( c : String)
}
protocol p2
{
    func f2()
}

// protocol icinde init yazilmis ise struct icinde sadece init diyerek , class icinde basina required yazarak hatanin onune geceriz
struct C1 : p1,p2 //classi struct olarak degistirdik
{
    func f2() {
        //ikinci bir protokol kullanarak baska bir fonksiyonu struct icinde zorunlu kildik
    }
    
    
    //required anahtar kelimesi yukarida zorunlu kilinana intit oldugunu belirtir
     init(c: String) {
         
         d1 = 0
    }
    
    // protokol icindeki yapiyi mecburi bir sekilde kullanmak durumunda kaldik
    var d1: Int
    
    func f1() {
        
    }
    
    init()
    {
        d1 = 0
    }
}
*/

///Kalitim konusundaki ornegi protocol kullanarak yaptik
///
/*
protocol CalisanProtocol
{
    var SicilNo : Int {get set}
    var Ad      : String {get set}
    var Soyad   : String {get set}
    
    func IzinKullan()
    
}
protocol YoneticiProtocol : CalisanProtocol
{
    func KontrolEt()
}

class Calisan : CalisanProtocol
{
    var SicilNo: Int
    
    var Ad: String
    
    var Soyad: String
    
    func IzinKullan() {

    }
    
    init() {
        SicilNo = 0
        Ad = " "
        Soyad = " "
    }
}

class Mudur : YoneticiProtocol
{
    func KontrolEt() {
    
    }
    
    var SicilNo: Int
    
    var Ad: String
    
    var Soyad: String
    
    func IzinKullan() {
        
    }
    init() {
        SicilNo = 0
        Ad = " "
        Soyad = " "
    }
    
}

*/

/*------------EXTENSION-------------*/
/*
//extension tipleri genisletmek ve ozelliklerini arttirmak icin kullanilir

class Personel
{
    var Ad      : String
    var Soyad   : String
    init() {
       Ad = ""
       Soyad = ""
    }
}
// ayni isimde class tanimlayamayiz onun yerine extension yazmamiz gerek
extension Personel
{   //convenience ifadesi asil classda tanimlanan init iceriklerini cagirabilmemize yarar
    convenience init(v: Int)
    {
        self.init()
    }
}

var per = Personel()

protocol p1
{
    var p : Int {get set}
}
extension Personel : p1
{
    var p: Int {
        get {
            return 0
        }
        set {
            
        }
    }
}

extension String
{
    func ToInt()->Int?
    {
        return Int(self)
    }
}
var s = "10"
var i = s.ToInt()
print(i)
*/

/*----------Erişim Belirleyiciler------------*/
///Erisim belirleyiciler ile yapilarin erisimlerinin kontrol altina alinmasi
///
//Kac Tane Erisim Belirleyici var Bakalim ;
//OPEN
///Her yerden erisilebilir
///sadece classlarda ve class elemanlarinda kullanilabilir(Fonksiyon ve fieldlar )
///structlarda kullanilmaz
///import edilen tum proje ve moduller icinde turetilebilirler (anlatilicak)
///open olan tum siniflarin elemanlari bu sinifi import eden tum modullerden override edilebilirler
///kisitlamanin olmadigi erisim belirtecidir
///ornek
/*
open class C1
{
    open var d1 = 9
    open func f1()
    {}
}
 */
//PUBLIC
///Her yerden erisilebilir
///Tum yapilarda kullanilabilir
///Sadece tanimlandigi target(Bir proje icerisinde kendi basina kullanilabilen kendi basina calisabilen yapilardir , kutuphane , uygulama vs) icinde turetim saglanabilir
///Public tanimlanan sinif elemanlari sadece tanimlandigi target icinde override edilebilir.(over her yerden override edilebilir )


//INTERNAL
///Sadece tanimlandigi target icerisinden override edilebilir
///tumyapilarda kullanilabilir
///varsayilan erisim seviyesidir

//FILE PRIVATE
///Sadece tanimlandigi dosya icersinden kullanilabilir
///Tum yapilarda kullanilabilir
///Ayni dosyada farkli entiyler var ise erisebilir
///ya da ayni entity'nin farkli dosylarda extansionlari var ise erisemez
///yeni bir dosya acip fileprivate degisken ve siniflarini cagirdigimizde derleyici onlari goremeyecektir
/*
open class C1
{
    open var d1 = 9
    fileprivate var d2 : Int?
    open func f1()
    {}
}
extension C1
{
    func f2()
    {
        d1 = 10
        d2 = 20
    }
}
 */

//PRIVATE
///sadece tanimlandigi entity(sinif, struct vb) icinde gecerlidir
/// ayni entitynin farkli dosyalarda extensionlari var ise erisemez
///
open class C1
{
    open var d1 = 9
    fileprivate var d2 : Int?
    private var d4 : Int?
    open func f1()
    {}
}
extension C1
{
    func f2()
    {
        d1 = 10
        d2 = 20
        d4 = 40
    }
}
var s = C1()
//s.d4//d4 e erisemeyiz private oldugu icin

/*---------Otomatik Referans Sayacı---Automatic reference counting----*/
///Referans sayaclari bir nesnenin verisini kac tane referansin gosterdigi bilgisini tutar
class personel
{
    var a : Int
    
    init()
    {
        a = 10
    }
    
    init (s : Int)
    {
        a = s
    }
    deinit{
        
    }
}
/*
var p1 = personel()
//Referance Sayaci = 1
var p1kopya = p1
p1kopya.a = 20
print(p1.a)
print(p1kopya.a)*/

func f1(s : personel)
{ //RS = 3
    _ = s
 //RS = 4
}
func f2 ()
{
    var p = personel()
    //RS = 1
    var k = p
    //RS = 2
    f1(s: k)
    //RS = 2 bellekten silindigi icin func f1 deki referan sayisi 2 azalir
}
f2()
//RS = 0
