//
//  BaseTableViewCell.swift
//  Lab
//
//  Created by jatin patel on 03/07/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import UIKit

class BaseTableViewCell: UITableViewCell {
  
  func setupWithModel(_ model: BaseTableViewCellModel) {

  }
  
  class func heightForCell(_ model: BaseTableViewCellModel?) -> CGFloat {
    return 0
  }
  
}
