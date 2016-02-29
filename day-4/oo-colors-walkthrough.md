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
- The UIColor class has several different initializers that we can use to create different custom colors. We will use this one:
```Swift
init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
```
- The RGB color model combines the three primary colors to create any color we want. The CGFloat value for each color represents how much that color will be added to the final color, from 0.0 (not at all) to 1.0 (maximum amount). The alpha argument determines how opaque the color will be, from 0.0 (completely transparent) to 1.0 (completely opaque). The following RGB combination results in a dark maroon color. Take a minute and play around with different combinations of these values.
```Swift
override func viewDidLoad() {
  super.viewDidLoad()
  
  view.backgroundColor = UIColor(red: 0.9, green: 0.5, blue: 0.5, alpha: 0.3)
}
```
- Our goal for this project is to add a button that will generate random background colors when pressed.
- Let's add the button first. Just go to the object library, search for button, and drag the button onto the center of your page. Change the text in the button to read "New Random Color".
- Click on the button, hold control, and drag the mouse into the ViewController. A form will appear. Fill it out as follows:
 - Connection: Action
 - Name: changeColor
 - Type: UIButton
- It should generate the following method in your ViewController:
```Swift
@IBAction func changeColor(sender: UIButton) {
}
```
- We can add a line of code here so that the view's background color changes when the button is pressed.
```Swift
@IBAction func changeColor(sender: UIButton) {
  view.backgroundColor = UIColor(red: 0.0, green: 0.8, blue: 0.5, alpha: 0.8)
}
```
- This only will work once though. We could generate four random CGFloat values in the changeColor method and use those to create a new UIColor, but this adds too much logic to the controller. We want to keep that kind of work in the model, so let's create a new model that will handle generation of random colors. Start by creating a new file called Color.swift (in the same folder as ViewController.swift).
- In Color.swift, define a new struct called Color and import UIKit so that we will have access to UIColor and CGFloat
```Swift
struct Color {
  import UIKit
}
```
- This struct will need one method: random. This method will return a UIColor object.
```Swift
struct Color {
    func random()->UIColor {
    }
}
```
- The function drand48() generates a random decimal number between 0 and 1.0. We will use this to generate the RGBA values.
```Swift
func random()->UIColor {
    let red = drand48()
    let green = drand48()
    let blue = drand48()
    let alpha = drand48()
    return UIColor(red: red, green: green, blue: blue, alpha: alpha)
}
```
- This will give us an error saying that these four values are of type Double, while UIColor was expecting type CGFloat. We can easily cast these doubles to CGFloat.
```Swift
func random()->UIColor {
    let red = CGFloat(drand48())
    let green = CGFloat(drand48())
    let blue = CGFloat(drand48())
    let alpha = CGFloat(drand48())
    return UIColor(red: red, green: green, blue: blue, alpha: alpha)
}
```
- You may remember that we can take this struct to the view controller and store it in a constant
```Swift
let color = Color()
```
- Finally, the instance of Color can use the random method to assign random UIColors to the view's background color.
```Swift
@IBAction func changeColor(sender: UIButton) {
  view.backgroundColor = color.random()
}
```
###Conclusion
