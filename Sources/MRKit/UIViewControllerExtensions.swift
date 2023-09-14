//
//  UIViewControllerExtensions.swift
//  NumberPlates
//
//  Created by Михаил Разин on 19.04.2023.
//

import Foundation
import UIKit

public extension UIViewController {
    func push(_ vc: UIViewController, animated: Bool = true) {
        if let nc = self.navigationController {
            nc.pushViewController(vc, animated: animated)
        } else {
            print("ERROR, cant find NavigationController")
        }
    }
    
    func pop(animated: Bool = true) {
        if let nc = self.navigationController {
            nc.popViewController(animated: animated)
        } else {
            print("ERROR, cant find NavigationController")
        }
    }
    
    func popToRoot(animated: Bool = true) {
        if let nc = self.navigationController {
            nc.popToRootViewController(animated: animated)
        } else {
            print("ERROR, cant find NavigationController")
        }
    }
    
    func add(_ newView: UIView) -> UIView {
        if let v = self.view {
            v.addSubview(newView)
        }
        return view
    }
    
    func addWithAutolayout(_ newView: UIView) -> UIView {
        newView.translatesAutoresizingMaskIntoConstraints = false
        add(newView)
        return newView
    }
}
