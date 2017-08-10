## Clock App: Stopwatch Extension

### Students Will Be Able To
- Create a tabbed application from a single-view app. Specifically, create a tabbed application with two views: a clock and a stopwatch.
- Strengthen their knowledge of NSDate and NSTimer

### Why
Tabbed Views are very popular in iOS apps. The Clock, Music, Instagram, and iBook apps are just a few of the many popular examples. Besides being popular, they are not at all difficult to implement.

### Walkthrough
#### Getting Started
- While a tabbed application is one of the options available when you create a new Xcode project, you can also transform an already-made single-view app into a tabbed view app very easily.
- Open up your clock app and go to Main.storyboard. You should see your clock page with the time label at the top. Click on the clock page, go to the editor dropdown in the menu, and select Embed In -> Tab Bar Controller. This will create a tab bar controller that points to our clock page. If you run the app, it will show the same clock page, but now there is one tab at the bottom.
<p align="center">
  <img src="images/embed-in-tab-bar-controller.png" height="400px" hspace="20">
  <img src="images/one-tab-view.png" height="400px" hspace="20">
</p>
- Main.storyboard will now show the tab view controller and the one scene that is connected to it.
<p align="center">
  <img src="images/tab-bar-controller-one-scene.png" height="300px" hspace="20">
</p>

#### Adding a Second Scene
- In order to add another tab, go to the object library and search for the view controller object. Drag the new view controller object onto your storyboard and arrange it next to the tab controller and the clock page.
<p align="center">
  <img src="images/object-library-view-controller.png" height="200px" hspace="20">
  <img src="images/tab-bar-controller-two-scenes.png" height="400px" hspace="20">
</p>
- Holding down the control button, click and drag from the tab controller to the new view controller. When the popup menu appears, select Relationship Segue -> View Controllers.
<p align="center">
  <img src="images/connecting-second-scene-1.png" height="400px" hspace="20">
  <img src="images/connecting-second-scene-2.png" height="400px" hspace="20">
</p>

#### Adding Multiple View Controllers
- Now that we have two scenes in our storyboard, it is good practice to create two separate controllers for the scenes. It's possible to keep all of the necessary code in one view controller, but this can make your code very hard to read and debug as your app grows. Here's how to do it:
  - Add a new swift file to the project and name it StopwatchViewController. Copy and paste the following boilerplate controller code into the new file
    ```Swift
    import UIKit

    class StopwatchViewController: UIViewController {
      override func viewDidLoad() {
          super.viewDidLoad()
      }
    }
    ```
  - Rename the ViewController file ClockViewController. Go into the file and also change the name of the class to ClockViewController.
  - Connect each scene to their respective controller. You can do this by clicking on the scene in the storyboard, going to the identity inspector on the right, and selecting the appropriate view controller class in the Class dropdown field.

#### Next Steps:
- Now, it's up to you to build out the rest of this app. Using the NSDate and NSTimer classes, add a timer to the second tab of the app.
- Some things to think about as you build it out:
  - Keep Object-Oriented programming principles in mind. Add methods to the clock model to help out with the timer functionality, similar to the getCurrentTime method we built.
  - Brainstorm with a partner about ways to create a timer. If you're having trouble coming up with ideas:
    - Think about creating a counter variable and using NSTimer to increment the counter and update a label with the counter's value.
    - Another more advanced solution would be to use the NSTimeInterval data type. 
    - If you get stuck, take a look at some blog posts or stack overflow answers about making timers with Swift.
  - You can design the app anyway you like. Here's an example of what a very simple display would look like:
<p align="center">
  <img src="images/finished-app-clock.png" height="400px" hspace="20">
  <img src="images/finished-app-stopwatch.png" height="400px" hspace="20">
</p>




