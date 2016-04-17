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
<p align="center">
  <img src="" height="400px" hspace="20">
</p>

```Swift
class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeLabel.text = "11:25:15"
    }
}
```


```Swift
class Clock {
    
    func getCurrentTime() -> NSDate {
        return NSDate()
    }
}
```

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

