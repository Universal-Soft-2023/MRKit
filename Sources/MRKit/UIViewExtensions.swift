//
//  UIViewExtensions.swift
//  NumberPlates
//
//  Created by Михаил Разин on 19.04.2023.
//

import Foundation
import UIKit


public extension UIView {
    
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
    
    func contentMode(_ val: UIView.ContentMode) -> Self {
        self.contentMode = contentMode
        return self
    }
    
    func backgroundColor(_ val: UIColor) -> Self {
        self.backgroundColor = val
        return self
    }
    
    func clipsToBounds(_ val: Bool) -> Self {
        self.clipsToBounds = val
        return self
    }
    
    func cornerRadius(_ val: CGFloat) -> Self {
        self.layer.cornerRadius = val
        return self
    }
    
    func borderWidth(_ val: CGFloat) -> Self {
        self.layer.borderWidth = val
        return self
    }
    
    func borderColor(_ val: UIColor) -> Self {
        self.layer.borderColor = val.cgColor
        return self
    }
    
    func borderColor(_ val: CGColor) -> Self {
        self.layer.borderColor = val
        return self
    }
    
    func isUserInteractionEnabled(_ val: Bool) -> Self {
        self.isUserInteractionEnabled = val
        return self
    }
    
    func tintColor(_ val: UIColor) -> Self {
        self.tintColor = val
        return self
    }
    
    func setup(_ closure: (Self) -> Void) -> Self {
        closure(self)
        return self
    }
}
