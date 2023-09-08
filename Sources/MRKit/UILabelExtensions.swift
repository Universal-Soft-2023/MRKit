//
//  UILabelExtensions.swift
//  NumberPlates
//
//  Created by Михаил Разин on 19.04.2023.
//

import Foundation
import UIKit

public extension UILabel {

    func font(_ val: UIFont?) -> Self {
        self.font = val
        return self
    }
    
    func systemFont(ofSize: CGFloat) -> Self {
        self.font = .systemFont(ofSize: ofSize)
        return self
    }
    
    func systemFont(ofSize: CGFloat, weight: UIFont.Weight) -> Self {
        self.font = .systemFont(ofSize: ofSize, weight: weight)
        return self
    }
    
    func italicSystemFont(ofSize: CGFloat) -> Self {
        self.font = .italicSystemFont(ofSize: ofSize)
        return self
    }
    
    func boldSystemFont(ofSize: CGFloat) -> Self {
        self.font = .boldSystemFont(ofSize: ofSize)
        return self
    }
    
    func semiboldSystemFont(ofSize: CGFloat) -> Self {
        self.font = .systemFont(ofSize: ofSize, weight: .semibold)
        return self
    }
    
    func lightSystemFont(ofSize: CGFloat) -> Self {
        self.font = .systemFont(ofSize: ofSize, weight: .light)
        return self
    }
    
    func numberOfLines(_ val: Int) -> Self {
        self.numberOfLines = val
        return self
    }
    
    func minimumScaleFactor(_ val: CGFloat) -> Self {
        self.minimumScaleFactor = val
        return self
    }
    
    func adjustsFontSizeToFitWidth(_ val: Bool) -> Self {
        self.adjustsFontSizeToFitWidth = val
        return self
    }
    
    func adjustsFontSizeToFitWidthWith(minimumScaleFactor: CGFloat) -> Self {
        self.adjustsFontSizeToFitWidth = true
        self.minimumScaleFactor = minimumScaleFactor
        return self
    }
    
    func textAlignment(_ val: NSTextAlignment) -> Self {
        self.textAlignment = val
        return self
    }
    
    func textColor(_ val: UIColor) -> Self {
        self.textColor = val
        return self
    }
    
    func text(_ val: String?) -> Self {
        self.text = val
        return self
    }
    
    func setup(_ closure: (Self) -> Void) -> Self {
        closure(self)
        return self
    }
}
