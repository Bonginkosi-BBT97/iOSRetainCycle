//
//  ViewController.swift
//  RetainCycle
//
//  Created by Bonginkosi Tshabalala on 2023/03/21.
//

import UIKit

class ViewController: UIViewController {

    var peter: User?
    var bobo: User?

    override func viewDidLoad() {
        super.viewDidLoad()
        peter = User(firstName: "Peter", lastName: "Griffin")
        bobo = User(firstName: "Bobo", lastName: "Tshabalala")
        // Do any additional setup after loading the view.
        peter?.spouse = bobo
        bobo?.spouse  = peter

        peter = nil
    }

}

class User {
    let firstName: String
    let lastName: String
    weak var spouse: User?

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    deinit {
        print("\(firstName) has been removed from memory")
    }
}
