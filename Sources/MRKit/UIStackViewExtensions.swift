//
//  UIStackViewExtensions.swift
//  NumberPlates
//
//  Created by Михаил Разин on 19.04.2023.
//

import Foundation
import UIKit

public extension UIStackView {
    
    var horisontal: Self {
        self.axis = .horizontal
        return self
    }
    var vertical: Self {
        self.axis = .vertical
        return self
    }
    
    var fill: Self {
        self.distribution = .fill
        return self
    }
    var fillEqually: Self {
        self.distribution = .fillEqually
        return self
    }
    var fillProportionally: Self {
        self.distribution = .fillProportionally
        return self
    }
    var equalSpacing: Self {
        self.distribution = .equalSpacing
        return self
    }
    var equalCentering: Self {
        self.distribution = .equalCentering
        return self
    }
    
    func spacing(_ val: CGFloat) -> Self {
        self.spacing = val
        return self
    }
    
    func setup(_ closure: (Self) -> Void) -> Self {
        closure(self)
        return self
    }
}
