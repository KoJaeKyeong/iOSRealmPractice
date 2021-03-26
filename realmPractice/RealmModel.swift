//
//  RealmModel.swift
//  realmPractice
//
//  Created by Jae Kyeong Ko on 2021/03/26.
//

import RealmSwift

class Movie: Object {
    @objc dynamic var title = ""
    @objc dynamic var director = ""
}
