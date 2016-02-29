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
###Conclusion
