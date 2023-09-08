//
//  LongPressGestureRecognizer.swift
//  NumberPlates
//
//  Created by Михаил Разин on 19.04.2023.
//

import Foundation
import UIKit

extension UIView {
    
    // In order to create computed properties for extensions, we need a key to
    // store and access the stored property
    fileprivate struct AssociatedObjectKeys {
        static var longPressGestureRecognizer = "MediaViewerAssociatedObjectKey_mediaViewer"
    }
    
    fileprivate typealias Action = (() -> Void)?
    
    // Set our computed property type to a closure
    fileprivate var longPressGestureRecognizerAction: Action? {
        set {
            if let newValue = newValue {
                // Computed properties get stored as associated objects
                objc_setAssociatedObject(self, &AssociatedObjectKeys.longPressGestureRecognizer, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
            }
        }
        get {
            let tapGestureRecognizerActionInstance = objc_getAssociatedObject(self, &AssociatedObjectKeys.longPressGestureRecognizer) as? Action
            return tapGestureRecognizerActionInstance
        }
    }
    
    // This is the meat of the sauce, here we create the tap gesture recognizer and
    // store the closure the user passed to us in the associated object we declared above
    public func addLongPressGestureRecognizer(action: (() -> Void)?) {
        self.isUserInteractionEnabled = true
        self.longPressGestureRecognizerAction = action
        let longPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPressGesture))
        self.addGestureRecognizer(longPressGestureRecognizer)
    }
    
    // Every time the user taps on the UIImageView, this function gets called,
    // which triggers the closure we stored
    @objc fileprivate func handleLongPressGesture(sender: UITapGestureRecognizer) {
        if let action = self.longPressGestureRecognizerAction {
            action?()
        } else {
            print("no action")
        }
    }
    
}
