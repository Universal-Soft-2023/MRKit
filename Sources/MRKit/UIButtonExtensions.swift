//
//  UIButtonExtensions.swift
//  NumberPlates
//
//  Created by Михаил Разин on 19.04.2023.
//

import Foundation
import UIKit

public extension UIButton {
    @discardableResult
    func setup(_ closure: (Self) -> Void) -> Self {
        closure(self)
        return self
    }
}
