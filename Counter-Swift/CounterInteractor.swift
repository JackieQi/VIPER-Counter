//
//  CounterInteractor.swift
//  Counter-Swift
//
//  Created by Jackie Qi on 5/29/17.
//  Copyright © 2017 Jackie. All rights reserved.
//

import Foundation

class CounterInteractor: CounterInteractorInput {
  var output: CounterInteractorOutput?
  private var count: Int = 0
  
  func requestCount() {
    output?.updateCount(count)
  }
  
  func increment() {
    count += 1
    output?.updateCount(count)
  }
  
  func decrement() {
    if canDecrement() {
      count -= 1
      output?.updateCount(count)
    }
  }
  
  func canDecrement() -> Bool {
    return count > 0
  }
}
