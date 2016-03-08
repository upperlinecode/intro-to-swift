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
Running the app with iPhone 6 Plus simulator:
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
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func success(sender: UIButton) {
        let label = UILabel(frame: CGRectMake(0, 0, 225, 40))
        label.center = CGPointMake(160, 284)
        label.textAlignment = NSTextAlignment.Center
        label.text = "Success"
        label.backgroundColor = UIColor(red: 0.361, green: 0.722, blue: 0.361, alpha: 1)
        self.view.addSubview(label)
    }
}
```
- Now, pressing the success button will draw a green label with the text "Success"
####MVC Review
- While our button is now connected, and it functions how we want, we still aren't finished. Simply having working code isn't always enough. It's important to have code that is clean, concise, and organized according to the MVC design pattern. That means our code should be organized into a model, a view, and a controller. This is what Apple has to say about how a user's actions (like pushing a button) should communicate with your code:

```
Communication: User actions in the view layer that create or modify data are communicated through a 
controller object and result in the creation or updating of a model object. When a model object changes 
(for example, new data is received over a network connection), it notifies a controller object, 
which updates the appropriate view objects.
```

- In other words, we shouldn't write all of the code for generating a label in the view controller. Instead, we can create a class that can generate labels and then call upon this class in the view controller.

####CustomLabel.swift
- Our model is going to be stored in CustomLabel.swift, which now contains an empty class, CustomLabel.
- This class needs one property, view. When we created a label in ViewController and added it to the view, we did so with this line of code:
```Swift
self.view.addSubview(label)
```
- The ViewController class had a property view that was an instance of UIView. This instance of the view is not available outside of the ViewController, unless we pass it into our CustomLabel class when we initialize our instance. Then, that view becomes a property of the CustomLabel instance and we can use the addSubView method in our model.
- Add view as a property of CustomLabel, and add an init method to initialize each instance with a view.
```Swift
class CustomLabel {
    
    var view: UIView
    
    init(view: UIView) {
        self.view = view
    }
}
```
- The instance of CustomLabel will need a method for creating a success button. Create a method and put it in the code we used previously to create the label.
```Swift
class CustomLabel {
    
    var view: UIView
    
    init(view: UIView) {
        self.view = view
    }
    
    func success() {
        let label = UILabel(frame: CGRectMake(0, 0, 225, 40))
        label.center = CGPointMake(160, 284)
        label.textAlignment = NSTextAlignment.Center
        label.text = "Success"
        label.backgroundColor = UIColor(red: 0.361, green: 0.722, blue: 0.361, alpha: 1)
        self.view.addSubview(label)
    }
}
```

####Connecting our Model with our Controller
This section is probably the most complicated and moves the fastest. Take your time and pause to ask/answer lots of questions.
- We need to create an instance of CustomLabel in the view controller, and then we'll be able to use the success method to generate the success label.
- When the view loads, we want to create the instance of our CustomLabel class
```Swift
override func viewDidLoad() {
    super.viewDidLoad()
    let labelGenerator = CustomLabel(view: self.view)
}
@IBAction func success(sender: UIButton) {
    labelGenerator.success()
}
```
- Putting it in the viewDidLoad method will prompt a warning that the instance of CustomLabel is never used. There will also be an error in the sucess method saying that there is an unresolved identifier: labelGenerator.
- Instead, we want to give ViewController a property labelGenerator. The type will be CustomLabel? so that we can wait for the view to load to assign it a value. This is very important, and the reason for it goes back to this morning's lecture on optionals. Only an optional variable can have no value (nil), and we need to create the class without an initial value for labelGenerator. The reason for this is that the view object is an argument for CustomLabel's initializer. Therefore, we need to wait for the view to load before we can assign a value to labelGenerator.
```Swift
class ViewController: UIViewController {
    
    var labelGenerator: CustomLabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelGenerator = CustomLabel(view: self.view)
    }
    
  
    @IBAction func success(sender: UIButton) {
        labelGenerator!.success()
    }

}
```
