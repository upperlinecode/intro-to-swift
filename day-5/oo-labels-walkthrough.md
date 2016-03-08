##Object Oriented Labels

###Students Will Be Able To
- Build a one-page application with IBActions to handle button events
- Create a label programatically rather than throught the GUI
- Use option types

###Why
Yesterday, students were able to change the background color of their apps using OO methods. Before that lab, they had only done that through the Attributes Inspector. This method of building out code programatically can be applied to all sorts of problems. Object Oriented programming keeps this code seperate from the view and abstracts the code from the controller. 


###Walkthrough
####Getting Started
- Download the [starter](https://github.com/upperlinecode/intro-to-swift/tree/master/day-5/ObjectOrientedLabels) Xcode project. This includes three buttons with constraints. We are going to connect each button to the view controller with IBActions. Each action will create a different label above the buttons in the view.
- When you create add a label to the view, that label is an instance of a Swift class: [UILabel](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UILabel_Class/)
- This class has an initializer with one parameter: a CGRect, which will be the label's frame. CGRect's initializer takes in four arguments (x position, y position, width, height), none of which require a parameter name. 
```Swift
let label = UILabel(frame: CGRectMake(0, 0, 225, 40))
```
- This creates an empty label in the upper left hand corner of the view. We can also assign values for important properties such as text, backgroundColor, textAlignment, and center (the coordinates of the label's center).
```Swift
let label = UILabel(frame: CGRectMake(0, 0, 225, 40))
label.text = "This is a label"
label.backgroundColor = UIColor.blueColor()
label.center = CGPointMake(160, 284)
label.textAlignment = NSTextAlignment.Center
```
- This will create a label, but creating a label doesn't automatically add it to the view. The view controller has a property, view, which is an instance of UIView. This is responsible for managing all of the content in Main.storyboard. It has a method, addSubView, which we can use to add the label to the view. This will make our new label appear when we run the app. Let's try adding this code to our ViewController

<p align="center">
```Swift
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel(frame: CGRectMake(0, 0, 225, 40))
        label.text = "This is a label"
        label.backgroundColor = UIColor.blueColor()
        label.center = CGPointMake(160, 284)
        label.textAlignment = NSTextAlignment.Center
        
        self.view.addSubview(label)
    }
}
```
 <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/images/photo-gallery-ipad-initial.png?raw=true" height="500px" hspace="20">
</p>
