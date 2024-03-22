//
//  ViewController.swift
//  SimpsonApp
//
//  Created by Muhammed on 21.03.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var mySimpsonArray = [Models]()
    var choosenSimpson: Models?

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        
        tableView.dataSource = self
        
        
        //Models nesnelerini tanımlama
        
        let inceMemed = Models(name: "İnce Memed 1", job: "Otuz iki yıllık bir zaman diliminde yazılan Ince Memed dörtlüsü, düzene başkaldıran Memedʼin ve insan ilişkileri, doğası ve renkleriyle Çukurovaʼnın öyküsü. Yaşar Kemalʼin söyleyişiyle içinde başkaldırma kurduyla doğmuş bir insanın, mecbur adam ın romanı", img:UIImage(named: "incememed")! )
        let tehlikeliOyunlar = Models(name: "Tehlikeli Oyunlar", job: "Hikmet Benol, toplumdaki yoğun kargaşanın temelinde yatan gerçekliği araştırırken, gerçeklerle içtenlikle ilgilenmenin toplumu yönetenlerce tehlikeli görüldüğünü seziyor ve “oyun oynuyormuş gibi ilgilenme” yolunu seçiyor. Kişinin kendiyle savaşmasını ve yenmesini, kendini dönüştürmesini önemli bir sorun olarak algılamaya çağıran, çarpıcı ve sarsıcı bir roman.", img:UIImage(named: "tehlikelioyunlar")! )
        let tutunamayanlar = Models(name: "Tutunamayanlar", job: "Tutunamayanlar, Oğuz Atay'ın ilk romanıdır. 1970 yılında TRT Roman Ödülü'nü kazandı. Oğuz Atay'ın 25'inci ölüm yıldönümü olan 2002 yılında UNESCO, Tutunamayanlar'ı İngilizce'ye tercüme edilmesi gereken seçkin edebiyat eseri listesine seçti.", img:UIImage(named: "tutunamayanlar")! )
        let masumiyetMüzesi = Models(name: "Masumiyet Müzesi", job: "Masumiyet Müzesi, Orhan Pamuk'un 29 Ağustos 2008 tarihinde İletişim Yayınları tarafından piyasaya sunulan aşk romanıdır.", img:UIImage(named: "masumiyetmüzesi")! )
        let kardeşiminHikayesi = Models(name: "Kardeşimin Hikayesi", job: "Kardeşimin Hikayesi, Nisan 2013'te yayımlanmış olan bir Zülfü Livaneli romanıdır. Doğan Kitap yayınevi tarafından basılmıştır. Arka kapağında yer alan Aşk, bir uçurum kıyısında gözü bağlı yürümektir sloganı adı altında yayımlanmıştır. Kitap, büyük bir başarıya imza atarak 2013 yılının en çok okunan kitabı oldu.", img:UIImage(named: "kardesiminhikayesi")! )

        let kuyucakliYusuf = Models(name: "Kuyucaklı Yusuf", job: "Kuyucaklı Yusuf, o zamana kadar bir öykü yazarı olarak tanınan Sabahattin Ali'nin 1937 yılında kaleme aldığı ve yayımladığı ilk romanıdır. Romanın baş kahramanı olan Yusuf, Türk edebiyatının en romantik karakterlerinden birisi olarak kabul edilir.", img:UIImage(named: "kuyucaklıyusuf")! )

        let maiVesiyah = Models(name: "Mai ve Siyah", job: "Mai ve Siyah, Halid Ziya Uşaklıgil'in yazdığı bir romandır. Yapıtta roman kahramanı Ahmed Cemil'in kişiliğinde Babıali'de basın hayatında yok olup giden sanatçılar anlatılmaktadır. Mai etimolojik olarak Arapça bir kelime olup mavi demektir.4 Aralık 2008 tarihinde Wayback Machine sitesinde arşivlendi.", img:UIImage(named: "mai")! )

        
        //Model sınıfının nesnelerini tutan diziye nesnelerimizi atadık.
        mySimpsonArray.append(tutunamayanlar)
        mySimpsonArray.append(masumiyetMüzesi)
        mySimpsonArray.append(inceMemed)
        mySimpsonArray.append(tehlikeliOyunlar)
        mySimpsonArray.append(kardeşiminHikayesi)
        mySimpsonArray.append(kuyucakliYusuf)
        mySimpsonArray.append(maiVesiyah)



    }
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mySimpsonArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = mySimpsonArray[indexPath.row].name
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        choosenSimpson = mySimpsonArray[indexPath.row]
        self.performSegue(withIdentifier: "goDetailsVc", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goDetailsVc"{
            
            let destination = segue.destination as! DetailsViewController
            destination.selectedSimpson = choosenSimpson!
        }
    }
}


