//
//  RootWireframe.swift
//  Counter-Swift
//
//  Created by Jackie Qi on 5/29/17.
//  Copyright © 2017 Jackie. All rights reserved.
//

import Foundation
import UIKit

class RootWireframe {
  func navigationControllerFromWindow(_ window: UIWindow) -> UINavigationController {
    let navigationController = window.rootViewController as! UINavigationController
    return navigationController
  }
  
  func showRootViewController(_ viewController: UIViewController, inWindow: UIWindow) {
    let navigationController = navigationControllerFromWindow(inWindow)
    navigationController.viewControllers = [viewController]
  }
}
