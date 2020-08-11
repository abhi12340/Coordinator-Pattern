//
//  BuyCoordinator.swift
//  Coordinators
//
//  Created by Abhishek Kumar on 19/06/20.
//  Copyright © 2020 Abhishek Kumar. All rights reserved.
//

import UIKit

class BuyCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    weak var parentCoordinator : MainCoordinator?
    var navigationController: UINavigationController
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func passData(data : Int) {
        let vc = BuyViewController.instantiate()
        vc.value = data
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    
//    func didFinishBuying(){
//        parentCoordinator?.childDidFinish(self)
//    }
}
