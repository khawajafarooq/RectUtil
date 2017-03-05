//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

extension UIView {
    
    // MARK: Geometry Methods
    func centeredRectWithinRect(containerRect: CGRect)
    {
        self.frame.origin.y = containerRect.size.height / 2 - (self.frame.size.height / 2)
        self.frame.origin.x = containerRect.size.width / 2 - (self.frame.size.width / 2)
    }
    
    func distanceBetweenTwoPoints(point1: CGPoint, point2: CGPoint) -> CGFloat
    {
        let dx: CGFloat = point2.x - point1.x
        let dy: CGFloat = point2.y - point1.y
        
        return sqrt(dx*dx + dy*dy)
    }
    
    func setXOrigin(xOrigin: CGFloat)
    {
        self.frame.origin.x = xOrigin
    }
    
    func setYOrigin(yOrigin: CGFloat)
    {
        self.frame.origin.y = yOrigin
    }
    
    func setXAndYOrigin(xOrigin: CGFloat, yOrigin: CGFloat)
    {
        self.setXOrigin(xOrigin: xOrigin)
        self.setYOrigin(yOrigin: yOrigin)
    }
    
    func setWidth(width: CGFloat)
    {
        self.frame.size.width = width
    }
    
    func setHeight(height: CGFloat)
    {
        self.frame.size.height = height
    }
    
    func setSize(size: CGSize)
    {
        self.frame.size = size
    }
    
    func setXOriginAndWidth(xOrigin: CGFloat, width: CGFloat)
    {
        self.setXOrigin(xOrigin: xOrigin)
        self.setWidth(width: width)
    }
    
    func setYOriginAndHeight(yOrigin: CGFloat, height: CGFloat)
    {
        self.setYOrigin(yOrigin: yOrigin)
        self.setHeight(height: height)
    }
    
    func setBottom(bottom: CGFloat)
    {
        self.setHeight(height: bottom - self.frame.origin.y)
    }
    
    func shrinkHeight(shrinkOffset: CGFloat)
    {
        self.frame = CGRect(x: self.frame.origin.x, y: self.frame.origin.y, width: self.frame.size.width, height: self.frame.size.height - shrinkOffset)
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
cgBtn.setXOrigin(xOrigin: 20.0)

// Step.2 changin origin Y
cgBtn.setYOrigin(yOrigin: 20.0)

// Alternate way of doing Step.1 & Step.2 together
cgBtn.setXAndYOrigin(xOrigin: 10.0, yOrigin: 10.0)

// Step.3 changin width
cgBtn.setWidth(width: 300.0)

// Step.4 changin height
cgBtn.setHeight(height: 40.0)

// Alternate way of doing Step.3 & Step.4 together
cgBtn.setSize(size: CGSize(width: 300.0, height: 40.0))

// Step.5 set bottom
cgBtn.setBottom(bottom: 100.0)

// Step.6 shrink height
cgBtn.shrinkHeight(shrinkOffset: 60.0)

// Step.7 center within a rect
cgBtn.centeredRectWithinRect(containerRect: superView.frame)

