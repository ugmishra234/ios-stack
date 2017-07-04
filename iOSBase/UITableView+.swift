//
//  UITableView+.swift
//  Lab
//
//  Created by jatin patel on 03/07/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import UIKit

extension UITableView {

  func dequeueReusableCellWithModel(_ indexPath: IndexPath, model: BaseTableViewCellModel) -> BaseTableViewCell {
      return self.dequeueReusableCell(withIdentifier: String(describing: CellRegistry.cellClassNameForModel(model)), for: indexPath) as! BaseTableViewCell
  }
  
  func heightOfCellForModel(_ model: BaseTableViewCellModel?) -> CGFloat {
    guard let model = model, let className = CellRegistry.cellClassNameForModel(model) as? BaseTableViewCell.Type else {
      return 0
    }
    return className.heightForCell(model)
  }
  
}
