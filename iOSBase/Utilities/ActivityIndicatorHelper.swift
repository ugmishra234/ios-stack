//
//  ActivityIndicatorHelper.swift
//  Lab
//
//  Created by jatin patel on 04/07/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import UIKit

class ActivityIndicatorHelper {
  
  static var sharedInstance = ActivityIndicatorHelper()
  
  let baseView = UIView()
  let animationView = STSpotLoadView()
  
  init() {
    
  }

  func startLoader() {
    if let window = UIApplication.shared.keyWindow {
      baseView.frame = window.bounds
      baseView.backgroundColor = UIColor(complementaryFlatColorOf: UIColor.black, withAlpha: 0.5
      )
      window.addSubview(baseView)
      animationView.frame.size = CGSize(width: 70, height: 100)
      baseView.addSubview(animationView)
      animationView.center = baseView.center
      animationView.startAnimation()
    }
  }
  
  func stopLoader(_ animationStopped: @escaping () -> Void) {
    animationView.stopAnimation { 
      self.baseView.removeFromSuperview()
      animationStopped()
    }
  }

}
