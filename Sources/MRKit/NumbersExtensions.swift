//
//  NumbersExtensions.swift
//  NumberPlates
//
//  Created by Михаил Разин on 19.04.2023.
//

import Foundation
import UIKit

extension SignedInteger {
    var cgFloat: CGFloat {
        return CGFloat(self)
    }
}

extension CGFloat {
    var int: Int {
        return Int(self)
    }
}
