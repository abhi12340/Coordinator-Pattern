//
//  Coordinator.swift
//  Coordinators
//
//  Created by Abhishek Kumar on 09/06/20.
//  Copyright © 2020 Abhishek Kumar. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator : class{
    var childCoordinators : [Coordinator] {get set}
    var navigationController : UINavigationController {get set}
    
    func start() 
}
