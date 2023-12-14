//
//  ViewController.swift
//  RealmDemo
//
//  Created by Refat E Ferdous on 12/14/23.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    let realm = try! Realm()
    override func viewDidLoad() {
        super.viewDidLoad()
        try! realm.write{
            realm.delete(realm.objects(Cat.self))
        }
        
        saveData()
        
        fetchData()
      
        //path
        print(Realm.Configuration.defaultConfiguration.fileURL)
        
        //save to realm
//        let cat = Cat()
//        cat.name = "Catty"
//        cat.gender = "Male"
//        cat.color = "White"
        
        //either this
//        try! realm.write{
//            realm.add(cat)
//        }
        //or this
//        realm.beginWrite()
//        realm.add(cat)
//        try! realm.commitWrite()
        
        
        //load data from realm
//        let results = realm.objects(Cat.self)
//        print("-------------------------------")
//        print(results[0].name)
        
//        let results = realm.objects(Cat.self).filter("color = 'black'")
//        print("-------------------------------")
//        print(results.count)
        
    }

    func fetchData(){
        let data = realm.objects(Cat.self)
        
        for cat in data {
            let newName = cat.name
            let newGender = cat.gender
            let newColor = cat.color
            print(newColor)
        }
        
    }
    
    
    func saveData(){
        let cat = Cat()
        cat.name = "Catty2"
        cat.gender = "Male2"
        cat.color = "White2"
        
        realm.beginWrite()
        realm.add(cat)
        try! realm.commitWrite()
    }
}

