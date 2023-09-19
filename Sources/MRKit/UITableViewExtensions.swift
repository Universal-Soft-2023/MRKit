//
//  UITableViewExtensions.swift
//  NumberPlates
//
//  Created by Михаил Разин on 19.04.2023.
//

import Foundation
import UIKit

public extension UITableView {
    
    @discardableResult
    func dataSource(_ val: UITableViewDataSource) -> Self {
        self.dataSource = val
        return self
    }
    
    @discardableResult
    func delegate(_ val: UITableViewDelegate) -> Self {
        self.delegate = val
        return self
    }
    
    @discardableResult
    func separetorStyle(_ val: UITableViewCell.SeparatorStyle) -> Self {
        self.separatorStyle = val
        return self
    }
    
    @discardableResult
    func rowHeight(_ val: CGFloat) -> Self {
        self.rowHeight = val
        return self
    }
    
    @discardableResult
    func rowHeightAutomaticDemension() -> Self {
        self.rowHeight = UITableView.automaticDimension
        return self
    }
    
    @discardableResult
    func allowsSelection(_ val: Bool) -> Self {
        self.allowsSelection = val
        return self
    }
    
    @discardableResult
    func separatorStyle(_ val: UITableViewCell.SeparatorStyle) -> Self {
        self.separatorStyle = val
        return self
    }
    
    @discardableResult
    func setup(_ closure: (Self) -> Void) -> Self {
        closure(self)
        return self
    }
}
