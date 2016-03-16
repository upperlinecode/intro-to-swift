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

####Bonus Tasks
- Add additional text fields so that the user can include more personal information in the username.
- Randomize the number that is added to the end of the username.
- Capitalize random letters in the username

###Conclusion
- It's important to remember that this is just another part of the greater MVC system. It's another way that we can send data from the view to the controller, and manipulate that data in the model. Similar to the text field object, there are many objects included in Xcode's object library that can accept user input. If you are curious about these, google is one of the most effective tools you can use. Try phrases like "Xcode object library checkboxes" or "Xcode object user input scroll".