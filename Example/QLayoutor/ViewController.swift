//
//  ViewController.swift
//  QLayoutor
//
//  Created by willqiu126 on 11/26/2017.
//  Copyright (c) 2017 willqiu126. All rights reserved.
//

import UIKit
import QLayoutor

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.setupSquare()
    self.setupBottomLabel()
  }
  
  private func setupSquare() {
    let square = UIView()
    square.layer.cornerRadius = 5.0
    square.backgroundColor = UIColor.red
    square.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(square)
    
    square.setWidthHeight(width: 100, height: 100)
    square.centerOfItsSuperView(self.view, priority: Priority.max)
  }
  
  private func setupBottomLabel() {
    let bottomLabel = UILabel()
    bottomLabel.text = "run in iPhone X"
    bottomLabel.textColor = UIColor.white
    bottomLabel.textAlignment = .center
    bottomLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
    bottomLabel.backgroundColor = UIColor.brown
    bottomLabel.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(bottomLabel)
    
    bottomLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    bottomLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
    bottomLabel.sameLeftRightAroundInSuperView(superview: self.view, padding: 0)
    bottomLabel.setBottomLayoutGuide(padding: 0, superVC: self)
  }
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}

