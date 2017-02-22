//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

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


func createButton() -> UIButton
{
    let button: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
    button.setTitle("Hello World", for: .normal)
    button.backgroundColor = UIColor.brown
    
    return button
}

// Demo starts here

// setup iPhone 5 dimension 320 x 568 uiview
var superView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 568))
superView.backgroundColor = UIColor.lightGray
var cgBtn = createButton()

superView.addSubview(cgBtn)

// below will render your view on playground
XCPlaygroundPage.currentPage.liveView = superView

// Step.1 changin origin X
cgBtn.frame = CGRectUtility.GMRectWithSetXOrigin(rect: cgBtn.frame, newXOrigin: 20.0)

// Step.2 changin origin Y
cgBtn.frame = CGRectUtility.GMRectWithSetYOrigin(rect: cgBtn.frame, newYOrigin: 20.0)

// Alternate way of doing Step.1 & Step.2 together
cgBtn.frame = CGRectUtility.GMRectWithSetXAndYOrigin(rect: cgBtn.frame, newXOrigin: 10.0, newYOrigin: 10.0)

// Step.3 changin width
cgBtn.frame = CGRectUtility.GMRectWithSetWidth(rect: cgBtn.frame, newWidth: 300.0)

// Step.4 changin height
cgBtn.frame = CGRectUtility.GMRectWithSetHeight(rect: cgBtn.frame, newHeight: 80.0)

// Alternate way of doing Step.3 & Step.4 together
cgBtn.frame = CGRectUtility.GMRectWithSetSize(rect: cgBtn.frame, newSize: CGSize(width: 300.0, height: 40.0))

// Step.5 set bottom
cgBtn.frame = CGRectUtility.GMRectWithSetBottom(rect: cgBtn.frame, newBottom: 100.0)

// Step.6 shrink height
cgBtn.frame = CGRectUtility.GMRectShrinkHeight(rect: cgBtn.frame, shrinkAmount: 40.0)

// Step.7 center within a rect
cgBtn.frame = CGRectUtility.GMCenteredRectWithinRect(rect: cgBtn.frame, containerRect: superView.frame)

