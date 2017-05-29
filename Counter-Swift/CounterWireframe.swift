//
//  CounterWireframe.swift
//  Counter-Swift
//
//  Created by Jackie Qi on 5/29/17.
//  Copyright © 2017 Jackie. All rights reserved.
//

import Foundation
import UIKit

let CounterViewControllerIdentifier = "CounterViewController"

class CounterWireframe {
  
  var counterPresenter : CounterPresenter?
  var rootWireframe: RootWireframe?
  
  func mainStoryboard() -> UIStoryboard {
    let storyboard = UIStoryboard(name: "Main", bundle: .main)
    return storyboard
  }
  
  func presentCounterInterfaceFromWindow(_ window: UIWindow) {
    let viewController = counterViewControllerFromStoryboard()
    viewController.eventHandler = counterPresenter
    counterPresenter!.userInterface = viewController
    rootWireframe?.showRootViewController(viewController, inWindow: window)
  }
  
  func counterViewControllerFromStoryboard() -> CounterViewController {
    let counterViewController = mainStoryboard().instantiateViewController(withIdentifier: CounterViewControllerIdentifier) as! CounterViewController
    
    return counterViewController
  }
}
