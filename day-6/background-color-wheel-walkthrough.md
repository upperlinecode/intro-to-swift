##Background Color Wheel

Completed project code [here](https://github.com/upperlinecode/intro-to-swift/tree/master/day-6/BackgroundColorWheel)

###Students Will Be Able To
- Understand how user input fits into the MVC pattern
- Add a UIPickerView object to their project
- Link a UIPickerView object to the ViewController using an IBOutlet
- Submit information from a UIPickerView object and manipulate it in the controller

###Why
- Not all types of user input are as straightforward to implement as a text field. It's important to see these other types of objects, and understand that someone can use them in their application without understanding every line of code that comes along with it.

###Walkthrough
####Getting Started
- Create a one-page application in Xcode called BackgroundColorWheel. 
- The only object in the view will be a Picker View object that displays a spinning wheel of values from which the user can select one choice. Select a Picker View object and drag it to the center of the Main.storyboard scene.
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-6/images/bgcw-picker-selected.png" height="400px" hspace="20">
</p>

####Connecting the Picker View to the View Controller
- We'll need to be able to reference the picker view in the controller, so make an outlet for it in the controller (click and drag as usual). Call it "colorWheel".
```Swift
class ViewController: UIViewController {
    @IBOutlet weak var colorWheel: UIPickerView!
}
```

####Protocols, and How to Not be Afraid of Them
- In order to deal add a picker view to our app, we need to touch some advanced topics in Swift programming. We don't need to get too in depth about any of these topics, and it's ok to be confused about some of what you're seeing. The most important take away from today is that you can use really powerful tools in your app without understanding every level of code that it comes from or being an expert in Object-Oriented Programming or Protocol-Oriented Programming or whatever it might be. Being an expert only comes with time, but you can do a lot of experimenting before then.
- Do you know how our ViewController class always has this colon followed by UIViewController? What's going on here is something called *inheritance*. This is a more advanced topic that we don't need to worry much about right now. But in a nutshell, there is a big class that the creators of Swift wrote called UIViewController. That class has a lot of methods and properties that our ViewController Class needs. With inheritance, our ViewController class automatically gets all of those methods and properties without us having to write that code.
```Swift
class ViewController: UIViewController {
    ...
}
```
- We can also add *protocols* to this top line. A protocol is a set of rules, and adding it to the top line is stating that our class will adhere to the rules of that protocol. Below, we define a class called ViewController, which inherits some of it's abilities from UIViewController. By adding the UIPickerViewDataSource protocol to this class definition, we are saying that the class is going to supply the data for a picker view somewhere. In this case, data means a list of things that will appear in the wheel as you scroll through different color options
```Swift
class ViewController: UIViewController, UIPickerViewDataSource {
    ...
}
```

- This [UIPickerViewDataSource](https://developer.apple.com/library/ios/documentation/iPhone/Reference/UIPickerViewDataSource_Protocol/index.html#//apple_ref/occ/intfm/UIPickerViewDataSource) protocol is required for any controller that is going to send data to a Picker View object. Giving our class this protocol is a promise that we'll include two specific methods in our class:
  - numberOfComponentsInPickerView: the number of wheels that our picker view will have. Ours will have 1 component.
  - pickerView:numberOfRowsInComponent: the number of rows in each wheel of our picker view. This will be equal to the number of colors in our color wheel.
- These methods depend on a data source. The data source of a color wheel will just be a list of colors that will appear on the wheel. Because this data source is so simple, we can just include it in the controller. Add an array at the top of the controller, and call it pickerDataSource.
```Swift
var pickerDataSource = ["White", "Red", "Green", "Blue"]
```
Our ViewController class after these UIPickerViewDataSource methods have been added:
```Swift
class ViewController: UIViewController, UIPickerViewDataSource {
  
  @IBOutlet weak var colorWheel: UIPickerView!

  var pickerDataSource = ["White", "Red", "Green", "Blue"]

  override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
}
```
- A view controller that connects a data source to a UIPickerView object needs one more protocol: [UIPickerViewDelegate](https://developer.apple.com/library/prerelease/ios/documentation/UIKit/Reference/UIPickerViewDelegate_Protocol/index.html). We need to include two methods from the UIPickerViewDelegate protocol:
  - pickerView:titleForRow:forComponent: This method will tell our picker view object what names (colors) to display in each row of the color wheel. It is using the pickerDataSource array to display a color based on the current selected row number.
  - pickerView:didSelectRow:inComponent: This method says what to do when a row of the picker view is selected. One of the arguments that is automatically passed into this method is the selected row. The function contains a conditional statement that sets the background color of the view based on the color in the selected row. You may recognize the UIColor class from the Object Oriented colors lab.

Our ViewController class after these UIPickerViewDelegate methods have been added:
```Swift
class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
  
  @IBOutlet weak var colorWheel: UIPickerView!

  override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataSource[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0)
        {
            self.view.backgroundColor = UIColor.whiteColor();
        }
        else if(row == 1)
        {
            self.view.backgroundColor = UIColor.redColor();
        }
        else if(row == 2)
        {
            self.view.backgroundColor =  UIColor.greenColor();
        }
        else
        {
            self.view.backgroundColor = UIColor.blueColor();
        }
    }
}
```

- Finally, we need to add two lines of code to the viewDidLoad() function.
```Swift
override func viewDidLoad() {
    super.viewDidLoad()
    self.colorWheel.dataSource = self
    self.colorWheel.delegate = self
}
```
- This is setting the dataSource and the delegate of the colorWheel. We are assigning *self* to both of these values. In this context, *self* is the ViewController class. Whenever you use self within an instance method, it is referring to that instance method's class. The ViewController class is providing the data source for the color wheel and is delegating some of it's behavior, and this needs to be explicitly stated (as it is in the code above).
- Now if you run the application, selecting a row should change the background color.
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-6/images/bgcw-red.png" height="400px" hspace="20">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-6/images/bgcw-blue.png" height="400px" hspace="20">
</p>

####Bonus Tasks
- Add more colors to the data source so there are more options for the background color.
- Allow the user to input RGB values to create custom colors for the background.
- Pull some of the logic from the pickerView:didSelectRow:inComponent: method and put it in a model so that your app follows more of an MVC design pattern.

###Conclusion
It may seem like using a UIPickerView, with all of the new methods that it brings to the view controller, would be very hard to use without help. But if you do a little googling, you'll see that there are countless blogs and video tutorials walking you through each step of the process.
