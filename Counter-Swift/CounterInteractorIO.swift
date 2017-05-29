//
//  CounterInteractorIO.swift
//  Counter-Swift
//
//  Created by Jackie Qi on 5/29/17.
//  Copyright © 2017 Jackie. All rights reserved.
//

import Foundation

protocol CounterInteractorOutput {
  func updateCount(_ newCount: Int)
}

protocol CounterInteractorInput {
  func requestCount()
  func increment()
  func decrement()
}
