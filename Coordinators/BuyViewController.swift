//
//  BuyViewController.swift
//  Coordinators
//
//  Created by Abhishek Kumar on 09/06/20.
//  Copyright © 2020 Abhishek Kumar. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController , StoryBoarded{
    weak var coordinator : BuyCoordinator?
    var value : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        print(value)

        // Do any additional setup after loading the view.
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        coordinator?.didFinishBuying()
//    }
    

}
