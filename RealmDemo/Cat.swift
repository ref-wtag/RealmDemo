//
//  Cat.swift
//  RealmDemo
//
//  Created by Refat E Ferdous on 12/14/23.
//

import Foundation
import RealmSwift

class Cat : Object {
    
    @objc dynamic var name : String?
    @objc dynamic var color : String?
    @objc dynamic var gender : String?
    
}
