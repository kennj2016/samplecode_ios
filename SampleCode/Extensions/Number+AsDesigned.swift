//
//  Number+AsDesigned.swift
//  SampleCode
//
//  Created by  KenNguyen on 24/06/2021.
//

import UIKit
import CoreFoundation
import Foundation

fileprivate let designRatio: CGFloat = max(min(UIScreen.main.bounds.width, UIScreen.main.bounds.height) / 360.0, 1.0)

extension CGFloat {
    
    /// Tự tính ra kích thước phù hợp với design (Design đang được thiết kế cho màn hình có chiều rộng 360pt)
    var asDesigned: CGFloat {
        return UI_USER_INTERFACE_IDIOM() == .phone ? self * designRatio : self
    }
    
}

extension Float {
    
    var asDesigned: CGFloat {
        return UI_USER_INTERFACE_IDIOM() == .phone ? CGFloat(self * Float(designRatio)).rounded() : CGFloat(self)
    }
    
    var asDesignedNoRounded: CGFloat {
        return UI_USER_INTERFACE_IDIOM() == .phone ? CGFloat(self * Float(designRatio)) : CGFloat(self)
    }
    
}

extension Double {
    
    var asDesigned: CGFloat {
        return UI_USER_INTERFACE_IDIOM() == .phone ? CGFloat(self * Double(designRatio)).rounded() : CGFloat(self)
    }
    
    var asDesignedNoRounded: CGFloat {
        return UI_USER_INTERFACE_IDIOM() == .phone ? CGFloat(self * Double(designRatio)) : CGFloat(self)
    }
    
}

extension Int {
    
    var asDesigned: CGFloat {
        return UI_USER_INTERFACE_IDIOM() == .phone ? (CGFloat(self) * designRatio).rounded() : CGFloat(self)
    }
    
    var asDesignedNoRounded: CGFloat {
        return UI_USER_INTERFACE_IDIOM() == .phone ? CGFloat(self) * designRatio : CGFloat(self)
    }
    
}

extension CGSize {
    
    var asDesigned: CGSize {
        return UI_USER_INTERFACE_IDIOM() == .phone ? CGSize(width: self.width.asDesigned, height: self.height.asDesigned) : self
    }
    
}

extension CGRect {
    
    var asDesigned: CGRect {
        return UI_USER_INTERFACE_IDIOM() == .phone ? CGRect(origin: CGPoint(x: self.origin.x.asDesigned, y: self.origin.y.asDesigned), size: CGSize(width: self.width.asDesigned, height: self.height.asDesigned)) : self
    }
    
    var asDesignedSize: CGRect {
        return UI_USER_INTERFACE_IDIOM() == .phone ? CGRect(origin: self.origin, size: CGSize(width: self.width.asDesigned, height: self.height.asDesigned)) : self
    }
    
}

extension UIEdgeInsets {
    
    var asDesigned: UIEdgeInsets {
        return UI_USER_INTERFACE_IDIOM() == .phone ? UIEdgeInsets(top: self.top.asDesigned, left: self.left.asDesigned, bottom: self.bottom.asDesigned, right: self.right.asDesigned) : self
    }
    
}
