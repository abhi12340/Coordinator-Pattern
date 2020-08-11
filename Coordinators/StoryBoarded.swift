//
//  StoryBoarded.swift
//  Coordinators
//
//  Created by Abhishek Kumar on 09/06/20.
//  Copyright © 2020 Abhishek Kumar. All rights reserved.
//

import Foundation
import UIKit

protocol  StoryBoarded {
    static func instantiate() -> Self
}

extension StoryBoarded where Self : UIViewController {
    static func instantiate() -> Self {
        let id  = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
