##Constraints


###Students Will Be Able To
- Use constraints to control layout over multiple screen sizes
- Center elements in the container
- Set height and width for elements
- Control vertical spacing between elements

###Why
You may have already noticed that when you preview your app, the view doesn't always look as it had in the editor. Even when your view's elements are aligned properly when simulating one device, everything might be off in another device. As iOS developers, we need to be able to design apps that will look good on any device. Constraints are rules that define how our view's elements will behave accross all devices. 

###Anticipated Pain Points
- One of the most difficult parts of learning constraints is that it's very hard to predict exactly how a constraint will effect the elements on a page. Sometimes you might fix one problem but create another. Students need a lot of time to experiment and test out different constraints before they get a good feel for how to use them. 


###Walkthrough
####Initial State
- Have students download this [xcode project](https://github.com/upperlinecode/intro-to-swift/tree/master/day-4/ConstraintsIntroduction). They should follow along with you as you add constraints to the project.
- Take a look at this Xcode project. From looking at the editor, you might think that the view is going to look nice and aligned when you run the app.
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/initial-editor.png?raw=true" height="500px" hspace="20">
</p>
- But when you run the app, you get a very different picture. The images below are simulations of the iPad Retina (left) and the iPhone 6s (right).
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/ipad-1.png?raw=true" height="500px" hspace="20">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/iphone-1.png?raw=true" height="500px" hspace="20">
</p>

####Center Horizontally in Container
- The initial problem seems to be that the elements don't know that they should be centered in the view, even though we placed them in the center of the editor. We can add a constraint to each that tells them to find the horizontal center of the container.
- Right click on the top label and drag the cursor to the edge of the container. When the container lights up blue, let go of the cursor and the following form should pop up:
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/center-horizontally.png?raw=true" height="200px" hspace="20">
</p>
- Select "Center Horizontally in Container" and repeat for the other two view elements.
- Your new constraints will show up in the document outline to the left of the editor. Right now, you should have three constraints listed.
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/document-outline.png?raw=true" height="200px" hspace="20">
</p>
- Now, the preview of your app should look like this. Again, the iPad Retina is on the left and the iPhone 6s is on the right.
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/ipad-2.png?raw=true" height="500px" hspace="20">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/iphone-2.png?raw=true" height="500px" hspace="20">
</p>

####Step Three
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/ipad-3.png?raw=true" height="500px" hspace="20">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/iphone-3.png?raw=true" height="500px" hspace="20">
</p>

####Step Four
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/ipad-4.png?raw=true" height="500px" hspace="20">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/iphone-4.png?raw=true" height="500px" hspace="20">
</p>

####Step Five
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/ipad-5.png?raw=true" height="500px" hspace="20">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/iphone-5.png?raw=true" height="500px" hspace="20">
</p>

####Step Six
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/ipad-6.png?raw=true" height="500px" hspace="20">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/iphone-6.png?raw=true" height="500px" hspace="20">
</p>

####Step Seven
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/ipad-7.png?raw=true" height="500px" hspace="20">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/iphone-7.png?raw=true" height="500px" hspace="20">
</p>
###Conclusion


