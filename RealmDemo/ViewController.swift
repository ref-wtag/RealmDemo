//
//  ViewController.swift
//  RealmDemo
//
//  Created by Refat E Ferdous on 12/14/23.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        
       let realm = try! Realm()
        
        
        //path
        print(Realm.Configuration.defaultConfiguration.fileURL)
    }


}

