//
//  MenuTableViewActorCellTableViewCell.swift
//  Lab
//
//  Created by jatin patel on 03/07/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import UIKit

class MenuTableViewActorCellTableViewCell: BaseTableViewCell {

  static let kNibName = String(describing: MenuTableViewActorCellTableViewCell())
  
  fileprivate var viewModel: MenuTableViewActorCellViewModel?
  
  override func setupWithModel(_ model: BaseTableViewCellModel) {
    if let model = model as? MenuTableViewActorCellViewModel {
      viewModel = model
    }
  }
  
  override class func heightForCell(_ model: BaseTableViewCellModel?) -> CGFloat {
    return 120
  }

}
