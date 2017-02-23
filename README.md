# RectUtil
CGRect is a powerful class which is used to set position, size and frame of a view on screen. RectUtil is a syntactic sugar version of CGRect to achieve same functionality. RectUtil covers the basic functionality of CGRect handling. It will make your life easy while interacting with CGRect.

**Features**

- Ease of changing origin X and Y of a frame
- Ease of changing size (width and height) of a frame
- Shrink height of a frame
- Finding distance between two points
- Changing the center of a view within a container view

**How to run?**

- Open the project file
- Select GeometryPlayground.playground
- Select Show Assitant Editor or press cmd+alt+enter

*Below is the piece of code will render your view on playground*
```
XCPlaygroundPage.currentPage.liveView = superView
```

**RectUtil Methods**

*Use below to change origin X or Y value of a frame*
```
button.frame = CGRectUtility.GMRectWithSetXOrigin(rect: cgBtn.frame, newXOrigin: 20.0)
button.frame = CGRectUtility.GMRectWithSetYOrigin(rect: cgBtn.frame, newXOrigin: 20.0)
```

*You can also do it together*
```
cgBtn.frame = CGRectUtility.GMRectWithSetXAndYOrigin(rect: cgBtn.frame, newXOrigin: 20.0, newYOrigin: 20.0)
```

*Use below to change width or height of a frame*
```
button.frame = CGRectUtility.GMRectWithSetWidth(rect: cgBtn.frame, newWidth: 300.0)
button.frame = CGRectUtility.GMRectWithSetHeight(rect: cgBtn.frame, newHeight: 80.0)
```

*Doing it together*
```
button.frame = CGRectUtility.GMRectWithSetSize(rect: cgBtn.frame, newSize: CGSize(width: 300.0, height: 40.0))
```

*Shrink height of a frame*
```
button.frame = CGRectUtility.GMRectShrinkHeight(rect: cgBtn.frame, shrinkAmount: 40.0)
```

*Changing center of a frame within a container*
```
button.frame = CGRectUtility.GMCenteredRectWithinRect(rect: cgBtn.frame, containerRect: superView.frame)
```

**How to use it?**

- Download RectUtililty.swift
- Insert it into your source code
- Use as explained in examples (playground)

Open to suggestions and improvements!
