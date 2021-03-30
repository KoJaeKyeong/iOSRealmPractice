//
//  ViewController.swift
//  realmPractice
//
//  Created by Jae Kyeong Ko on 2021/03/24.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var directorTextField: UITextField!
    
    var movie = Movie()
    var realm: Realm!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        realm = try! Realm()

    }
    
    @IBAction func insertData(_ sender: Any) {
        insertMovie()
    }
    
    @IBAction func deleteData(_ sender: Any) {
        deleteMovie()
    }
    
    @IBAction func updateData(_ sender: Any) {
        updateMovie()
    }
    
    @IBAction func readData(_ sender: Any) {
        readMovie()
    }
}

extension ViewController {
    
    func insertMovie() {
        if let title = titleTextField.text {
            movie.title = title
        }
        
        if let director = directorTextField.text {
            movie.director = director
        }
        
        try! realm.write {
            realm.add(movie)
        }
        
        // Realm 경로확인
        print(Realm.Configuration.defaultConfiguration.fileURL!)
    }
    
    func deleteMovie() {
        try! realm.write {
            realm.delete(realm.objects(Movie.self))
        }
    }
    
    func updateMovie() {
        if let movieInfo = realm.objects(Movie.self).filter(NSPredicate(format: "title = %@", titleTextField.text!)).first {
            try! realm.write {
                movieInfo.director = directorTextField.text!
            }
        }
    }
    
    func readMovie() {
        print(realm.objects(Movie.self))
    }
    
}
