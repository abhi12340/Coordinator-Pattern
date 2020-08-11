//
//  MainCoordinator.swift
//  Coordinators
//
//  Created by Abhishek Kumar on 09/06/20.
//  Copyright © 2020 Abhishek Kumar. All rights reserved.
//

import Foundation
import  UIKit

class MainCoordinator : NSObject , Coordinator ,UINavigationControllerDelegate , Buying , CreateAccount{
    
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.delegate = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    
//    func buy() {
//        let vc = BuyViewController.instantiate()
//        vc.coordinator = self
//        navigationController.pushViewController(vc, animated: true)
//    }
    
    func buySubscription(value : Int) {
        let child = BuyCoordinator(navigationController: navigationController)
        childCoordinators.append(child)
        child.passData(data: value)
    }
    
    func create() {
        let vc = CreateViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func added() {
        let vc = AddedNewViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    // This navigating back using stack logic is good for small app but if apps are large will have multiple flow so we need the tree like flow.
    
    func childDidFinish(_ child : Coordinator?) {
        for (index , coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
            }
            break
        }
    }
    
    // Proper way navigate back or remove coordinator if we have multiple coordinator.
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }
        if navigationController.viewControllers.contains(fromViewController) {
            return
        }
        
        if let buyViewController = fromViewController as? BuyViewController {
            childDidFinish(buyViewController.coordinator)
        }
    }
    
}
