//
//  MenuTableViewCell.swift
//  iOSBase
//
//  Created by Tudip on 26/03/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import UIKit

class MenuTableViewCell: BaseTableViewCell {
  
  static let kNibName = String(describing: MenuTableViewCell.self)
  
  @IBOutlet weak var titleLabel: UILabel!
  
  // MARK: iVars
  fileprivate var viewModel: MenuTableViewCellViewModel?
  
  override func setupWithModel(_ model: BaseTableViewCellModel) {
    if let model = model as? MenuTableViewCellViewModel {
      viewModel = model
    }
  }
  
  override class func heightForCell(_ model: BaseTableViewCellModel?) -> CGFloat {
      return 60
  }
  
}
