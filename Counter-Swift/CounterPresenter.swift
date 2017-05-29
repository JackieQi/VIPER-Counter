//
//  CounterPresenter.swift
//  Counter-Swift
//
//  Created by Jackie Qi on 5/29/17.
//  Copyright © 2017 Jackie. All rights reserved.
//

import Foundation

class CounterPresenter: CounterModuleInterface, CounterInteractorOutput {
  var userInterface: CounterViewInterface?
  var countInteractor: CounterInteractorInput?
  
  func didTapIncrementButton() {
    self.countInteractor?.increment()
  }
  
  func didTapDecrementButton() {
    self.countInteractor?.decrement()
  }
  
  func updateView() {
    self.countInteractor?.requestCount()
  }
  func updateCount(_ newCount: Int) {
    userInterface?.setCountText(String(newCount))
    userInterface?.setDecrementEnabled(canDecrement(newCount))
  }
  
  private func canDecrement(_ count: Int) -> Bool {
    return count > 0
  }
}
