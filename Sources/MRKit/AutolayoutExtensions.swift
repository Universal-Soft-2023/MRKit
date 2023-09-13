//
//  AutolayoutExtensions.swift
//  NumberPlates
//
//  Created by Михаил Разин on 19.04.2023.
//

import Foundation
import UIKit

public extension UIView {
   
    func add(_ newView: UIView) -> UIView {
        self.addSubview(newView)
        return newView
    }
    
    func addWithAutolayout(_ newView: UIView) -> UIView {
        newView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(newView)
        return newView
    }
    
    func forAutoLayout() -> UIView {
        self.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
}
