//
//  UIImageViewExtensions.swift
//  NumberPlates
//
//  Created by Михаил Разин on 19.04.2023.
//

import Foundation
import UIKit

public extension UIImageView {
    @discardableResult
    func image(_ val: UIImage?) -> Self {
        self.image = val
        return self
    }
    
    @discardableResult
    func image(named: String) -> Self {
        self.image = UIImage(named: named)
        return self
    }
    
    @discardableResult
    func coloredImage(named: String, tintColor: UIColor?) -> Self {
        self.image = UIImage(named: named)?.withRenderingMode(.alwaysTemplate)
        if let tint = tintColor {
            self.tintColor = tint
        }
        return self
    }
    
    @discardableResult
    func coloredImage(_ val: UIImage?, tintColor: UIColor?) -> Self {
        self.image = val?.withRenderingMode(.alwaysTemplate)
        if let tint = tintColor {
            self.tintColor = tint
        }
        return self
    }
    
    @discardableResult
    func setup(_ closure: (Self) -> Void) -> Self {
        closure(self)
        return self
    }
}
