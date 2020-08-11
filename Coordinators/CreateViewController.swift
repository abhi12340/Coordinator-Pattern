//
//  CreateViewController.swift
//  Coordinators
//
//  Created by Abhishek Kumar on 09/06/20.
//  Copyright © 2020 Abhishek Kumar. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController  , StoryBoarded{

    weak var coordinator : CreateAccount?
    
    @IBAction func added(_ sender: Any) {
        coordinator?.added()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
