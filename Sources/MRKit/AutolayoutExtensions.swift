//
//  AutolayoutExtensions.swift
//  NumberPlates
//
//  Created by Михаил Разин on 19.04.2023.
//

import Foundation
import UIKit

public extension UIView {
   
    @discardableResult
    func add(_ newView: UIView) -> UIView {
        self.addSubview(newView)
        return newView
    }
    
    @discardableResult
    func addWithAutolayout(_ newView: UIView) -> UIView {
        newView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(newView)
        return newView
    }
    
    @discardableResult
    func forAutoLayout() -> UIView {
        self.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
}
