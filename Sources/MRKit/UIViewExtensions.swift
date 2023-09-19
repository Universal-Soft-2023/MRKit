//
//  UIViewExtensions.swift
//  NumberPlates
//
//  Created by Михаил Разин on 19.04.2023.
//

import Foundation
import UIKit


public extension UIView {
    
    @discardableResult
    func alpha(_ val: CGFloat) -> Self {
        self.alpha = val
        return self
    }

    var scaleToFill: Self {
        self.contentMode = .scaleToFill
        return self
    }

    var scaleAspectFit: Self {
        self.contentMode = .scaleAspectFit
        return self
    }
    
    var scaleAspectFill: Self {
        self.contentMode = .scaleAspectFill
        return self
    }
    
    @discardableResult
    func contentMode(_ val: UIView.ContentMode) -> Self {
        self.contentMode = contentMode
        return self
    }
    
    @discardableResult
    func backgroundColor(_ val: UIColor) -> Self {
        self.backgroundColor = val
        return self
    }
    
    @discardableResult
    func clipsToBounds(_ val: Bool) -> Self {
        self.clipsToBounds = val
        return self
    }
    
    @discardableResult
    func cornerRadius(_ val: CGFloat) -> Self {
        self.layer.cornerRadius = val
        return self
    }
    
    @discardableResult
    func borderWidth(_ val: CGFloat) -> Self {
        self.layer.borderWidth = val
        return self
    }
    
    @discardableResult
    func borderColor(_ val: UIColor) -> Self {
        self.layer.borderColor = val.cgColor
        return self
    }
    
    @discardableResult
    func borderColor(_ val: CGColor) -> Self {
        self.layer.borderColor = val
        return self
    }
    
    @discardableResult
    func isUserInteractionEnabled(_ val: Bool) -> Self {
        self.isUserInteractionEnabled = val
        return self
    }
    
    @discardableResult
    func tintColor(_ val: UIColor) -> Self {
        self.tintColor = val
        return self
    }
    
    @discardableResult
    func setup(_ closure: (Self) -> Void) -> Self {
        closure(self)
        return self
    }
}
