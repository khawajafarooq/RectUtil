//
//  RectUtililty.swift
//  RectUtil
//
//  Created by GIB on 2/23/17.
//
//

import Foundation

// Gemotry Utility
public class CGRectUtility {
    
    // MARK: Geometry Methods
    public class func GMCenteredRectWithinRect(rect: CGRect, containerRect: CGRect) -> CGRect
    {
        var r: CGRect = rect
        
        r.origin.y = containerRect.size.height / 2 - (r.size.height / 2)
        r.origin.x = containerRect.size.width / 2 - (r.size.width / 2)
        
        return r
    }
    
    public class func GMDistanceBetweenTwoPoints(point1: CGPoint, point2: CGPoint) -> CGFloat
    {
        let dx: CGFloat = point2.x - point1.x
        let dy: CGFloat = point2.y - point1.y
        
        return sqrt(dx*dx + dy*dy)
    }
    
    public class func GMRectWithSetYOrigin(rect: CGRect, newYOrigin: CGFloat) -> CGRect
    {
        var r: CGRect = rect
        r.origin.y = newYOrigin
        
        return r
    }
    
    public class func GMRectWithSetXAndYOrigin(rect: CGRect, newXOrigin: CGFloat, newYOrigin: CGFloat) -> CGRect
    {
        var r: CGRect = rect
        r.origin.x = newXOrigin
        r.origin.y = newYOrigin
        
        return r
    }
    
    public class func GMRectWithSetXOrigin(rect: CGRect, newXOrigin: CGFloat) -> CGRect
    {
        var r: CGRect = rect
        r.origin.x = newXOrigin
        
        return r
    }
    
    public class func GMRectWithSetWidth(rect: CGRect, newWidth: CGFloat) -> CGRect
    {
        var r: CGRect = rect
        r.size.width = newWidth
        
        return r
    }
    
    public class func GMRectWithSetHeight(rect: CGRect, newHeight: CGFloat) -> CGRect
    {
        var r: CGRect = rect
        r.size.height = newHeight
        
        return r
    }
    
    public class func GMRectWithSetSize(rect: CGRect, newSize: CGSize) -> CGRect
    {
        var r: CGRect = rect
        r.size = newSize
        
        return r
    }
    
    public class func GMRectWithSetXOriginAndWidth(rect: CGRect, newXOrigin: CGFloat, newWidth: CGFloat) -> CGRect
    {
        var r: CGRect = rect
        r = GMRectWithSetXOrigin(rect: r, newXOrigin: newXOrigin)
        r.size.width = newWidth
        
        return r
    }
    
    public class func GMRectWithSetYOriginAndHeight(rect: CGRect, newYOrigin: CGFloat, newHeight: CGFloat) -> CGRect
    {
        var r: CGRect = rect
        r = GMRectWithSetYOrigin(rect: rect, newYOrigin: newYOrigin)
        r.size.height = newHeight
        
        return r
    }
    
    public class func GMRectWithSetBottom(rect: CGRect, newBottom: CGFloat) -> CGRect
    {
        var r: CGRect = rect
        r.size.height = newBottom - r.origin.y
        
        return r
    }
    
    public class func GMRectShrinkHeight(rect: CGRect, shrinkAmount: CGFloat) -> CGRect
    {
        return CGRect(x: rect.origin.x, y: rect.origin.y, width: rect.size.width, height: rect.size.height - shrinkAmount)
    }
}

