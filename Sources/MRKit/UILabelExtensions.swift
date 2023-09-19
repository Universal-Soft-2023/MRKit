//
//  UILabelExtensions.swift
//  NumberPlates
//
//  Created by Михаил Разин on 19.04.2023.
//

import Foundation
import UIKit

public extension UILabel {

    @discardableResult
    func font(_ val: UIFont?) -> Self {
        self.font = val
        return self
    }
    
    @discardableResult
    func systemFont(ofSize: CGFloat) -> Self {
        self.font = .systemFont(ofSize: ofSize)
        return self
    }
    
    @discardableResult
    func systemFont(ofSize: CGFloat, weight: UIFont.Weight) -> Self {
        self.font = .systemFont(ofSize: ofSize, weight: weight)
        return self
    }
    
    @discardableResult
    func italicSystemFont(ofSize: CGFloat) -> Self {
        self.font = .italicSystemFont(ofSize: ofSize)
        return self
    }
    
    @discardableResult
    func boldSystemFont(ofSize: CGFloat) -> Self {
        self.font = .boldSystemFont(ofSize: ofSize)
        return self
    }
    
    @discardableResult
    func semiboldSystemFont(ofSize: CGFloat) -> Self {
        self.font = .systemFont(ofSize: ofSize, weight: .semibold)
        return self
    }
    
    @discardableResult
    func lightSystemFont(ofSize: CGFloat) -> Self {
        self.font = .systemFont(ofSize: ofSize, weight: .light)
        return self
    }
    
    @discardableResult
    func numberOfLines(_ val: Int) -> Self {
        self.numberOfLines = val
        return self
    }
    
    @discardableResult
    func minimumScaleFactor(_ val: CGFloat) -> Self {
        self.minimumScaleFactor = val
        return self
    }
    
    @discardableResult
    func adjustsFontSizeToFitWidth(_ val: Bool) -> Self {
        self.adjustsFontSizeToFitWidth = val
        return self
    }
    
    @discardableResult
    func adjustsFontSizeToFitWidthWith(minimumScaleFactor: CGFloat) -> Self {
        self.adjustsFontSizeToFitWidth = true
        self.minimumScaleFactor = minimumScaleFactor
        return self
    }
    
    @discardableResult
    func textAlignment(_ val: NSTextAlignment) -> Self {
        self.textAlignment = val
        return self
    }
    
    @discardableResult
    func textColor(_ val: UIColor) -> Self {
        self.textColor = val
        return self
    }
    
    @discardableResult
    func text(_ val: String?) -> Self {
        self.text = val
        return self
    }
    
    @discardableResult
    func setup(_ closure: (Self) -> Void) -> Self {
        closure(self)
        return self
    }
}
