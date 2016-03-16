##Username Generator Walkthrough

Completed project code [here](https://github.com/upperlinecode/intro-to-swift/tree/master/day-6/UsernameGenerator)


###Students Will Be Able To
- Understand how user input fits into the MVC pattern
- Add a UITextField object to their project
- Link a UITextField object to the ViewController using an IBOutlet
- Submit text from a UITextField object and manipulate it in the controller

###Why
- All of the project we've built so far have something in common: the only user input they can accept is the pressing of a button. But how many iPhone or iPad apps require you to type in your name, check boxes, or set a date? Trying to do all of this only using buttons would be difficult and unecessary.

###Walkthrough
####Getting Started
- In Xcode, create a new one-page application with the name "UsernameGenerator".
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-6/images/un-gen-create-project.png" height="400px" hspace="20">
</p>
- Give students ten minutes to set up their project. These are the things they should add to the project to get set up:
  - Add a label that says "Username Generator" at the top center.
  - Add a label below it that says "What is your hometown?"
  - Add another label below that says "What is your favorite animal?"
  - If they have extra time, have them add constraints so that the labels are all centered horizontally and nicely spaced vertically, as shown below.
  - Another extra task: Set the background color, or the text color in the labels.
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-6/images/un-gen-labels-ss.png" height="400px" hspace="20">
</p>

####Adding Text Fields
- The type of view object we're going to use to obtain the user's input is called a Text Field. Add a text field beneath the hometown and favorite animal labels.
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-6/images/un-gen-text-fields-ss.png" height="400px" hspace="20">
</p>

####Connecting Text Fields to the View Controller
- Just like when we would right-click and drag from our label to the View Controller to create our IBOutlets, do the same to create an IBAction. Connect the lower of the two text fields to the controller. This is how the form should look:
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-6/images/un-gen-ibaction.png" height="200px" hspace="20">
</p>
  - Action: create a method instead of simply a property to reference.
  - Event: Primary Action Triggered. This means that this method will execute whenever the user presses return (enter).
  - Arguments: Sender. This means that the object sending the information to the controller (the text field) will be passed in as an argument to the method. This is important because it's how we will access the text field's text.

```Swift
@IBAction func animal(sender: UITextField) {
  print(sender.text)
}
```

- By adding this print statement, we can see how the sender's (text field's)text, can be accessed in the controller. Open the debugging area and run the simulator. Add some text to the bottom text field and press enter. You should see this appear in the debugging area:
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-6/images/un-gen-debug-text-field.png" height="200px" hspace="20">
</p>
- When the students see how this works, have them delete the IBAction method in the controller.
- We don't actually want to send the data from the text fields to the controller until both fields have been filled. To do this, we'll add a button underneath both text fields.
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-6/images/un-gen-add-button.png" height="400px" hspace="20">
</p>
- Then connect the button to the controller as an IBAction.
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-6/images/un-gen-button-action.png" height="200px" hspace="20">
</p>
- Inside of the IBAction, store the text from each text field in a constant. The IBOutlets for each text field have a property "text" that can be used to retrieve this data.

- Our View Controller should now look like this:
```Swift
class ViewController: UIViewController {

    @IBOutlet weak var hometownField: UITextField!
    @IBOutlet weak var animalField: UITextField!
    
    ...
  
    @IBAction func generateUsername(sender: AnyObject) {
        let hometown = hometownField.text
        let animal = animalField.text
    } 
}
```

####Sending Data Back to the View
- Now that we have the user input stored in the controller, we need a way to display it in the view. A simple way to do this is to add two labels to the view: one with the text "New Username" and the other initially blank. When the button is pressed, we can fill the text of the blank label with the new username.
- Add the two new labels to the view, and create an IBOutlet for the blank label.
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-6/images/un-gen-labels-for-submit.png" height="400px" hspace="20">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-6/images/un-gen-new-username-iboutlet.png" height="200px" hspace="20">
</p>
- Now we can complete the process by combining the animal and hometown strings, with some extra numbers at the end for good measure, and storing that new string in the newUsername label.
```Swift
class ViewController: UIViewController {

    @IBOutlet weak var hometownField: UITextField!
    @IBOutlet weak var animalField: UITextField!
    @IBOutlet weak var newUsername: UILabel!

    ...
  
    @IBAction func generateUsername(sender: AnyObject) {
        let hometown = hometownField.text
        let animal = animalField.text
        newUsername.text = "\(hometown)\(animal)123"
 
    }
}
```
- Try it out! We are very close, but we have one more problem: optionals. The text obtained from the text fields are of type String? (optional string). This means we have to unwrap them or else we end up with this:
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-6/images/un-gen-optionals.png" height="400px" hspace="20">
</p>
- We could fix this by force unwrapping the hometown and animal constants with an "!", but it would be better to use optional chaining to unwrap the optionals as we assign them to constants.
```Swift
@IBAction func generateUsername(sender: AnyObject) {
    @IBAction func generateUsername(sender: AnyObject) {
        if let hometown = hometownField.text {
            if let animal = animalField.text {
                 newUsername.text = "\(hometown)\(animal)123"
            }
        }
    }
}
```
Final Test:
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-6/images/un-gen-final-ss.png" height="400px" hspace="20">
</p>

####Bonus Tasks
- Add additional text fields so that the user can include more personal information in the username.
- Randomize the number that is added to the end of the username.
- Capitalize random letters in the username

###Conclusion
- It's important to remember that this is just another part of the greater MVC system. It's another way that we can send data from the view to the controller, and manipulate that data in the model. Similar to the text field object, there are many objects included in Xcode's object library that can accept user input. If you are curious about these, google is one of the most effective tools you can use. Try phrases like "Xcode object library checkboxes" or "Xcode object user input scroll".
