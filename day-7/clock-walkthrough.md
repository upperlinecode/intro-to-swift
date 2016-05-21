##Clock App

Completed project code [here]()

###Students Will Be Able To
- Strengthen their knowledge of:
  - building UIViews
  - adding constraints to a view
  - using IBOutlets to connect view elements to controller code
- Recognize controller lifecycle events and relate them to methods such as viewDidLoad.

###Why
Adding a timing element to an app can be very useful. Most games out there have some variation of a gameplay clock. Any social networking app displays a time and date for users comments, posted pictures, and or events. Banking apps often time out after a period of time to protect users' information.

###Walkthrough
####Getting Started
- Create a one-page application in Xcode called Clock. 
- To begin, we need a label that will display the time. The initial placeholder text should be '00:00:00 PM'.
<p align="center">
  <img src="images/clock-initial-view.png" height="400px" hspace="20">
</p>

- A clock display works very similarly to the labels we've used before in class. We've already updated the text attribute of a label from the controller. Create an IBOutlet from Main.storyboard to ViewController.swift, and call the outlet "timeLabel". Then, we can update the clock's time as the app loads, just like this:
```Swift
class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeLabel.text = "11:25:15 AM"
    }
}
```
<p align="center">
  <img src="images/clock-hard-coded-time.png" height="400px" hspace="20" style="border:black solid 1px">
</p>
- There are two obvious problems with this method of updating the clock: we are only updating the clock at the instant when the app loads, and the time is hard-coded rather than the actual time.
- We'll start with getting the accurate time. Swift has a class within UIKit called [NSDate](https://developer.apple.com/library/ios/documentation/Cocoa/Reference/Foundation/Classes/NSDate_Class/) that has methods for getting the time and date. Have the students open up a new Xcode playground and, as a class, test out the methods and properties of NSDate. You can start by making a Clock class that has a getCurrentTime method like below.

```Swift
class Clock {
    
    func getCurrentTime() -> NSDate {
        return NSDate()
    }
}
```
<p align="center">
  <img src="images/ns-date-formatter-playground.png" height="400px" hspace="20">
</p>
```Swift
let clock = Clock()
```

```Swift
func updateTimeLabel() {
    let formatter = NSDateFormatter()
    formatter.timeStyle = .MediumStyle
    timeLabel.text = formatter.stringFromDate(clock.getCurrentTime())
}
```

```Swift
override func viewDidLoad() {
    super.viewDidLoad()
    timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "updateTimeLabel", userInfo: nil, repeats: true)
}
```

####Bonus Tasks
- Add multiple clock displays, each for a different time zone.
- Improve the accuracy of your clock and display time down to the millisecond.
- Draw an analog clock to display the time. You can follow the tutorial [here](http://sketchytech.blogspot.com/2014/11/swift-how-to-draw-clock-face-using.html)

###Conclusion

