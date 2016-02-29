##Creating Colors with Object Orientation

###Students Will Be Able To
- Build a one-page application that changes its background color to a new, random RGB value with the press of a button.
- Apply object-oriented principles to a new kind of problem.

###Why
Changing the background color of our app can easily be accomplished without creating our own structures. However, this exercise is a good demonstration of how code can be organized in an object-oriented fashion.

###Anticipated Pain Points



###Walkthrough
- Create a new one-page appliction in Xcode and call it ObjectOrientedColors
- Add the following line of code to the viewDidLoad method:
```Swift
 override func viewDidLoad() {
  super.viewDidLoad()
  
  view.backgroundColor = UIColor.blueColor()
}
```
- We recently introduced the idea of object-oriented programming, in which we organize our code in classes and structures. This line of code that we just added to our ViewController is a great example of OO programming. First, we call upon the view object, which represents the app's current scene. The view has a property called backgroundColor, to which we are able to assign a new value. There is another class called UIColor that we can use to create custom colors in our app. It has several premade colors that are accessed with class methods. Click the play button to preview how this blueColor() method applies a new background color to the view.

###Conclusion
