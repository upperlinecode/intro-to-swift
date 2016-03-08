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
<p align="center">
 <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-5/images/test-label.png?raw=true" height="400px" hspace="20">
</p>

Break for a couple of minutes and let students play around with these properties. Encourage them to change the values around and run the app to see how the changes look in the simulator.

####Build a Label with the Push of a Button
- Our app isn't going to automatically build a label when the view loads though. We're going to connect the label creation with the three buttons at the bottom of the view. Each button will create a different label: a success message, an error message, and an info message.
- Connect the success button with the view controller with an IBAction.
    - right click on the button and drag it into the view controller
    - fill out the form with these values:
<p align="center">
 <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-5/images/IBAction-form.png?raw=true" height="200px" hspace="20">
</p>
```Swift
@IBAction func info(sender: UIButton) {
    let label = UILabel(frame: CGRectMake(0, 0, 225, 40))
    label.center = CGPointMake(160, 284)
    label.textAlignment = NSTextAlignment.Center
    label.text = "Success"
    label.backgroundColor = UIColor(red: 0.361, green: 0.722, blue: 0.361, alpha: 1)
    self.view.addSubview(label)
}
```
