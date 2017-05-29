//
//  AppDependencies.swift
//  Counter-Swift
//
//  Created by Jackie Qi on 5/29/17.
//  Copyright © 2017 Jackie. All rights reserved.
//

import Foundation
import UIKit

class AppDependencies {
  var counterWireframe = CounterWireframe()
  
  init() {
    configureDependencies()
  }
  
  func installRootViewControllerIntoWindow(_ window: UIWindow) {
    counterWireframe.presentCounterInterfaceFromWindow(window)
  }
  
  func configureDependencies() {
 
    let rootWireframe = RootWireframe()
    let counterPresenter = CounterPresenter()
    let counterInteractor = CounterInteractor()
    
    counterInteractor.output = counterPresenter

    counterPresenter.countInteractor = counterInteractor
    counterWireframe.rootWireframe = rootWireframe
    counterWireframe.counterPresenter = counterPresenter
  }
}
