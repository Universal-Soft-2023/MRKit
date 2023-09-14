//
//  UITableViewExtensions.swift
//  NumberPlates
//
//  Created by Михаил Разин on 19.04.2023.
//

import Foundation
import UIKit

public extension UITableView {
    func dataSource(_ val: UITableViewDataSource) -> Self {
        self.dataSource = val
        return self
    }
    
    func delegate(_ val: UITableViewDelegate) -> Self {
        self.delegate = val
        return self
    }
    
    func separetorStyle(_ val: UITableViewCell.SeparatorStyle) -> Self {
        self.separatorStyle = val
        return self
    }
    
    func rowHeight(_ val: CGFloat) -> Self {
        self.rowHeight = val
        return self
    }
    
    func rowHeightAutomaticDemension() -> Self {
        self.rowHeight = UITableView.automaticDimension
        return self
    }
    
    func setup(_ closure: (Self) -> Void) -> Self {
        closure(self)
        return self
    }
}
