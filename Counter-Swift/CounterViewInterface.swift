//
//  CounterViewInterface.swift
//  Counter-Swift
//
//  Created by Jackie Qi on 5/29/17.
//  Copyright © 2017 Jackie. All rights reserved.
//

import Foundation

protocol CounterViewInterface {
  func setCountText(_ newCount: String)
  func setDecrementEnabled(_ enabled: Bool)
}
