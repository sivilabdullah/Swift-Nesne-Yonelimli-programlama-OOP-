//
//  main.swift
//  ileri swift
//
//  Created by abdullah's Monterey  on 12.10.2022.
//

import Foundation

//Bu bölümünde, değişken, try, catch, hata ve generic konuları anlatılacak.

/*-----------Lazy------------*/
//Degiskenlerin Bellege ihtiyac duyuldugunda cikarilmasi islemidir
/*
struct Kisi
{
    var Ad : String
    var Soyad : String
}
class B
{   //nesne bellege ciktiginda kisi nesneside bellege cikacak
   lazy var kisi = Kisi(Ad: "abdullah", Soyad: "sivil")
    lazy var str = " metin "
}

var b = B()
//b nesnesinin icinde bir tane kisi nesnesi bellekte olacak

var bkisi = b.kisi
var str = b.str
print(b.kisi.Ad)
///LAZY BASLANGIC DEGERI OLAN DEGERLERIN BELLEGE KULLANILMADAN ONCE CIKMASINI ENGELLER
 */

/*----------------GUARD------------------------*/
///Guard yapisi guvenli kod yazma islemleri anlatiliyor
//if yapisina benzer amaci kontrolumuzun saglanmadigi durumda kodun devam etmesini engellemektir
/*
func YasKontrol(yas : Int?)
{
    guard let y = yas else
    {
        return
    }
    
    guard y > 0 && y < 130 else
    {
        return
    }
    
    //islemler kontroller
}
 */


/*----------------error-custom error------------------------*/

///Hata tiplerinin olusmasi
///kendimize ozel hata nesnesi olusturma
///
/*
enum HataKodlari : Int, Error // error sinifi kullanarak kendimize ozel hata kodlari olusturabiliriz
{
    case H1 = 10
    case H2 = 11
    case H3 = 12
}
var hata1 = HataKodlari.H1.rawValue

func HataKontrol()->String
{
    //Hata var ise islemler
    return "olusan hata kodu : \(HataKodlari.H1.localizedDescription)"//ciktida hata olarak gorebilmek icin localizeDescription'i nesne uzerinde bu sekilde kullanmaliyiz
}

print(HataKontrol())
*/


/*----------------Do try catch(yakalama) - Throw(firlatma)------------------------*/
///Hata firlatma islemleri anlatilacak
///farklari gorebilmek icin bi onceki kod blogunu kullandik
/*
enum HataKodlari : Int, Error // error sinifi kullanarak kendimize ozel hata kodlari olusturabiliriz
{
    case H1 = 10
    case H2 = 11
    case H3 = 12
}

func HataKontrol()throws ->String
{
    //Hata firlatma islemi Throw ile yapilir
    
    throw HataKodlari.H1
    return ""
}
//try hatayla ilgileniyorum, kodu dene demek icin try anahtar kelimesini kullaniyoruz
do{
    var s = try HataKontrol()//sadece bu kod blogu ile calistirirsak program hata vericektir do ve catch blogu arasinda yazmak gerek
    
        var s2 = try? HataKontrol() //try in basina soru isareti koymak burada belirsizlik var demektir
    var s3 = try! HataKontrol() //try in yanina unlem koymak fonksiyonun icinde hata olmadigi garantisini veriyoruz demektir
}
catch
{
    print(error.localizedDescription)
}

//istedigimiz kadar catch blogu yazabiliriz yanina hangi hata kodunu calistirdigimizi belirtmemiz yeter
catch HataKodlari.H2
{
 
}
catch HataKodlari.H3
{
    
}
*/


 /* ----------------Hata Yonetim ornek uygulama ------------------------ */
/*
protocol OzelHataProtocol : LocalizedError
{
    var Code : Int {get}
    var Baslik : String? {get}
    var Aciklama : String? {get}
}

struct OzelHata : OzelHataProtocol
{
    var Code: Int
    
    var Baslik: String?
    
    var Aciklama: String?
    
    init(code: Int, baslik: String? , aciklama: String?) {
        self.Code = code
        self.Baslik = baslik ?? "Hata"
        self.Aciklama = aciklama ?? "Bilinmeyen Hata"
    }
}

func HataKontrol() throws -> String
{
    if 3 < 5
    {
        throw OzelHata(code: 10, baslik: "Beklenmeyen Hata", aciklama: "Sistem Hatasai")
    }
    return "hata yok"
}

do
{
    var durum = try HataKontrol()
    print(durum)
}
catch
{
    let hata = error as! OzelHata
    print(hata.Baslik!)
}
*/

/* ----------------Dispatch Queue ------------------------ */
///Dispatch Queue ile senkron ve asenkron işlemler
///mevcut uygulamalar calisirken belii bir sira ile calistirlirilir. kod calistirlmak icin bi onceki kod blogunun bitmesini bekler. dispatch queue ile bir kodu diger islemci cekirdeklerinde yapilmasini saglayabiliriz boylece uygulamada donmalar ortadan kalkar daha hizli calisir
///Diger bir islevi de
///Arka planda calismasini istedigimiz ve kuyrugu etkilemesini istemedigimiz islemler icin kullanilir
/*
DispatchQueue.main.sync { //main(ana) akis kodlarini yazdigimiz kod blogu
    
}

DispatchQueue.main.async {//asenkron(async) mevcut ana akisi etkilemeyen kodlari yazdigimiz kod blogu
    
}

DispatchQueue.global().sync//ana olmayan arkaplanda yapilan akis kodlari yazdigimiz kod blogu
{
    
}
DispatchQueue.global().async//ana olmayan arkaplanda yapilan akisi etkilemeyen kodlari yazdigimiz kod blogu
{
    
}
 URLSessionDataTask //web servislerini cagirdigimiz kod blogu
*/


/* ----------------GENERIC ------------------------ */
//Generic mimarisi ile esnek kod yazilmasi anlatiliyor
//Generic,tanimladigimiz sinif ve yazdigimiz fonksiyonlarda herhangi bir tipe ozel olmaksizin islem yapabilecek kodlar yazmaya ihtiyac duyariz. Disaridan tip belirlemesine izin verdigimiz esnek yapilara generic yapilar denir.
/*
func ListeKopyala<T>(list : [T])->[T]//liste kopyala yanina t yazarak hem int hem string hemde herhangi bir tipi belirmlemeden kullanabiliriz
{
    var KopyaListe = [T]()
    for eleman in list
    {
        KopyaListe.append(eleman)
    }
    return KopyaListe
}

var kopyaListe = ListeKopyala(list: [1,2,3,4])
var strKopyaListe = ListeKopyala(list: ["A","B","C"])// burada generic kullanmadan listeyi kopyalayamayiz cunku int deger dondurduk

//protocollerde generic yapisi kullanamayiz
class Sinif<T>
{
    var genericNesne: T?
   
}
var s = Sinif<String>()
s.genericNesne = "metin"

//butun tiplerin gonderilmesini istemedigimiz durumlarda ise ornegin karsilastirmalarda sadece karsilastirma yapilan tipleri izin vermek istiyorsak ;

protocol P1
{
    var d : String {get}
}
//<T : P1> = yazdigimizda sadece p1 protokolunun tiplerini kullan demis oluyoruz
class SinifP<T : P1>
{
    var genericNesne : T?
}
//var sp = SinifP<String>()

class SP : P1
{
    var d: String = "metin"
    
    
}
var sp = SinifP<SP>()
sp.genericNesne?.d
print(sp)
*/


/* ----------------EGITIM SONU  ------------------------ */
///Gorulen Konular:::
///Swift Giris
///Degiskenler ve Veri Tipleri
///Standart Programlama Yapilari
///Collections
///Nesne Tabanli Programlama
///Ileri swift


///Ne Durumdayiz:::
///Xcode Hakimlik
///Swift dili aliskanliklari
///Yazilimin Temelleri
///Temiz, Guvenli ve Esnek kod yazmanin kolayliklari
///Generic islemler


///Ne Yapabiliriz
///Swift Detaylari (Apple Kaynaklarindan Arastirma )
///Nesne Tabanli Programlama Detaylari
///ileri Konular(SIK kullanilmayan ama gerekli olan yapilar)
///

class Sinif
{
    var e : Int {
        get{}
        set(value)
        {
            d = value
        }
        
    }
}
