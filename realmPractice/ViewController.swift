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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension ViewController {
    
    var realm = Realm
    
}
