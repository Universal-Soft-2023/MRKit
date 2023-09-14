//
//  UIButtonExtensions.swift
//  NumberPlates
//
//  Created by Михаил Разин on 19.04.2023.
//

import Foundation
import UIKit

public extension UIButton {
    func setup(_ closure: (Self) -> Void) -> Self {
        closure(self)
        return self
    }
}
