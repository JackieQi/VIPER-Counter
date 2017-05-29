//
//  ViewController.swift
//  Counter-Swift
//
//  Created by Jackie Qi on 5/29/17.
//  Copyright © 2017 Jackie. All rights reserved.
//

import UIKit

class CounterViewController: UIViewController, CounterViewInterface {

  @IBOutlet var countLabel: UILabel!
  @IBOutlet var incrementButton: UIButton!
  @IBOutlet var decrementButton: UIButton!
  var eventHandler: CounterModuleInterface?
  
  @IBAction func increment(_ sender: UIButton) {
    eventHandler?.didTapIncrementButton()
  }
  
  @IBAction func decrement(_ sender: UIButton) {
    eventHandler?.didTapDecrementButton()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    eventHandler?.updateView()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func setCountText(_ newCount: String) {
    countLabel.text = String(newCount)
  }
  
  func setDecrementEnabled(_ enabled: Bool) {
    decrementButton.isEnabled = enabled
  }

}

