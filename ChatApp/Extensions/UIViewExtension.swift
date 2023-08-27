//
//  UIView_addSubViews.swift
//  MapKit
//
//  Created by Hoang Nhan Nguyen Dinh on 2023-02-13.
//

import UIKit
import Foundation

extension UIView{
    public func addSubViews(_ views: UIView...) {
        for view in views{
            self.addSubview(view)
        }
    }
    
    public func enableTapGestureRecognizer(target: Any? , action: Selector?){
        self.isUserInteractionEnabled = true
        self.addGestureRecognizer(UITapGestureRecognizer(target: target, action: action))
    }
    
    public var width:CGFloat{
        return self.frame.size.width
    }
    
    public var height:CGFloat{
        return self.frame.size.height
    }
    
    public var top:CGFloat{
        return self.frame.origin.y
    }
    
    public var bottom:CGFloat{
        return self.frame.size.height + self.frame.origin.y
    }
    
    public var left:CGFloat{
        return self.frame.origin.x
    }
    
    public var right:CGFloat{
        return self.frame.size.width + self.frame.origin.x
    }
}

extension Notification.Name {
    /// Notificaiton  when user logs in
    static let didLogInNotification = Notification.Name("didLogInNotification")
}
