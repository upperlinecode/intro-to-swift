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

####1)Center Horizontally in Container
- The initial problem seems to be that the elements don't know that they should be centered in the view, even though we placed them in the center of the editor. We can add a constraint to each that tells them to find the horizontal center of the container.
- Right click on the top label and drag the cursor to the edge of the container. When the container lights up blue, let go of the cursor and the following form should pop up:
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/center-horizontally.png?raw=true" height="200px" hspace="20">
</p>
- Select "Center Horizontally in Container" and repeat for the other two view elements.
- Your new constraints will show up in the document outline to the left of the editor. Right now, you should have three constraints listed.
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/document-outline.png?raw=true" height="300px" hspace="20">
</p>
- Now, the preview of your app should look like this. Again, the iPad Retina is on the left and the iPhone 6s is on the right.
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/ipad-2.png?raw=true" height="500px" hspace="20">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/iphone-2.png?raw=true" height="500px" hspace="20">
</p>

####2) Set Height and Width
- It's clear that the previous constraint affected the size of our image. We can add constraints for the height and width of the image.
- Click on the image. Looking in the bottom right corner of the editor, you should see four buttons. The second from the right is called "Pin". Click on it and select the height and width constraints, then click "Add Two Constraints".
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/pin.png?raw=true" height="300px" hspace="20">
</p>
- Run your app again, and the view should now look like this:
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/ipad-3.png?raw=true" height="500px" hspace="20">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/iphone-3.png?raw=true" height="500px" hspace="20">
</p>

####3) Vertical Spacing to Top Layout Guide
- All of our elements seem to be stuck to the top of the container.
- Just like when we added the center horizontally constraint, right click on the top label and drag it to the border. This time, select "Vertical Spacing to Top Layout Guide". This sets the distace from the label to the top border of the view.
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/ipad-4.png?raw=true" height="500px" hspace="20">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/iphone-4.png?raw=true" height="500px" hspace="20">
</p>

####4) Vertical Spacing Between Elements
- We can also set vertical spacing between two elements in the view. Just right click on the top label and drag to the image. Select "vertical spacing".
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/vertical-spacing.png?raw=true" height="300px" hspace="20">
</p>
- This will push the image down below the label.
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/ipad-5.png?raw=true" height="500px" hspace="20">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/iphone-5.png?raw=true" height="500px" hspace="20">
</p>
- The last element we need to get in line is the text view. Add a vertical spacing constraint between the image and the text veiw, just like we did with the label and image above. Unfortunately, this doesn't make our text view appear.


####5) Set Height and Width for Text View
- At this point, it's hard to guess exactly why our text view isn't showing up. Luckily, Xcode has a feature that displays issues with constraints. Click this red button in the top right corner of your document outline and it will bring up a list of constraint issues.
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/constraint-issues-button.png?raw=true" height="200px" hspace="20">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/constraint-issues.png?raw=true" height="200px" hspace="20">
</p>
- This is telling us that our view is missing constraints for the height and width of our text view. Just like when we set the height and width of the image, click on the text view and select the Pin menu in the lower right hand corner. Select height and width and add both constraints. This will make the text view appear when you run the app.
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/ipad-6.png?raw=true" height="500px" hspace="20">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/iphone-6.png?raw=true" height="500px" hspace="20">
</p>

####6) Small Adjustments
- Let's say we want to shift everything up to add extra space underneath the text view. Since the image and the text view both depend on the position of the label, shifting the label up will also shift the other two elements up. Click on the label and go into the size inspector (in the right panel). You'll see the constraints listed, and you can click on edit to change them. Change the Top Space to Top Layout Guide value to 70, and watch everything shift up.
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/size-inspector.png?raw=true" height="100px" hspace="20">
</p>
<p align="center">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/ipad-7.png?raw=true" height="500px" hspace="20">
  <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-4/ConstraintsIntroduction/images/iphone-7.png?raw=true" height="500px" hspace="20">
</p>

###Conclusion
Constraints are very important because they have such a direct effect on user experience. If your app doesn't transition well to different devices, people won't enjoy using it. Constraints can be difficult to figure out. A great way to practice is to pick out an app on your phone and try to replicate the view in Xcode. See if you can make it look good when simulating on different devices. 
