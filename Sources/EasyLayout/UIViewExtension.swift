//
//  File.swift
//  
//
//  Created by yuhan on 2023/10/16.
//

import UIKit

// position extension
extension UIView {
    
    public var left: CGFloat {
        get {
            return frame.origin.x
        }
        set {
            frame.origin.x = newValue
        }
    }
    
    public var right: CGFloat {
        get {
            return frame.origin.x + frame.size.width
        }
        set {
            frame.origin.x = newValue - frame.size.width
        }
    }
    
    public var top: CGFloat {
        get {
            return frame.origin.y
        }
        set {
            frame.origin.y = newValue
        }
    }
    
    public var bottom: CGFloat {
        get {
            return frame.origin.y + frame.size.height
        }
        set {
            frame.origin.y = newValue - frame.size.height
        }
    }
    
    public var centerX: CGFloat {
        get {
            return frame.origin.x + frame.size.width / 2
        }
        set {
            frame.origin.x = newValue - frame.size.width / 2
        }
    }
    
    public var centerY: CGFloat {
        get {
            return frame.origin.y + frame.size.height / 2
        }
        set {
            frame.origin.y = newValue - frame.size.height / 2
        }
    }
}

// shape extension
extension UIView {
    
    public var width: CGFloat {
        get {
            return frame.size.width
        }
        set {
            frame.size.width = newValue
        }
    }
    
    public var height: CGFloat {
        get {
            return frame.size.height
        }
        set {
            frame.size.height = newValue
        }
    }
    
    public var size: CGSize {
        get {
            return frame.size
        }
        set {
            frame.size = newValue
        }
    }
}
