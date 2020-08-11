//
//  ViewController.swift
//  Coordinators
//
//  Created by Abhishek Kumar on 09/06/20.
//  Copyright © 2020 Abhishek Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController , StoryBoarded{
    
    weak var coordinator : (Buying &  CreateAccount)?

    @IBAction func buy(_ sender: Any) {
        coordinator?.buySubscription(value: 20)
    }
    @IBAction func create(_ sender: Any) {
        coordinator?.create()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
}

