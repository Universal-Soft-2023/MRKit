//
//  AutolayoutExtensions.swift
//  NumberPlates
//
//  Created by Михаил Разин on 19.04.2023.
//

import Foundation
import UIKit

extension UIView {
   
    func add(_ newView: UIView) -> UIView {
        self.addSubview(newView)
        return self
    }
    
    func addWithAutolayout(_ newView: UIView) -> UIView {
        self.translatesAutoresizingMaskIntoConstraints = false
        add(newView)
        return newView
    }
    
    func forAutoLayout(_ newView: UIView) -> UIView {
        self.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
}
