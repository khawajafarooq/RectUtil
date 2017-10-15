## RectUtil
RectUtil is a syntactic sugar of CGRect. It will make your life easy while interacting with CGRect. 

I have accomplished it using 2 approaches:
- Utility class
- UIView Extension

### Utility
Util is explained with example XCode project on the blog post [RectUtil - iOS CGRect Utility Class
](https://medium.com/@kfarooqa/rectutil-ios-cgrect-utility-class-a4792a964e58#.wf8qtzjby).

### Extension
A swifty approach of achieving this using UIView extension.

```
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
```

ExtensionPlayground.playground contains example for UIView extension for CGRect helpers.

### Compatibility
Verified that this repository's code works in XCode 8 with Swift 3.0

### Author 🙏🏻
**Web**: [Khawaja Farooq](http://khawajafarooq.github.io)

**Twitter**: [@khfarooq](https://twitter.com/khfarooq)

**Medium**: [@khfarooq](https://medium.com/@khfarooq)

