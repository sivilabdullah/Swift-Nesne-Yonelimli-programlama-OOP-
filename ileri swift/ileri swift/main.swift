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

/*----------------GUARD------------------------*/
///Guard yapisi guvenli kod yazma islemleri anlatiliyor
//if yapisina benzer amaci kontrolumuzun saglanmadigi durumda kodun devam etmesini engellemektir

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
/*----------------GUARD------------------------*/
