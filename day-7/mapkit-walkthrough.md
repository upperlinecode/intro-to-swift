##MapKit Walkthrough

Completed map app [here]()

###Students Will Be Able To
- Embed a map directly in their app with MapKit View
- Annotate their app's map with MKAnnotationView
- Find their phone's current location in a MapKit View using CoreLocation
- Create buttons to control events in the map

###Why
Maps can be a very useful addition to your app. Also, more object-oriented programming! MapKit is a framework that uses the same patterns we've seen for UIKit; more importantly, it uses the same patterns as WebKit, SiriKit, and many more APIs you can use in your iOS apps.

###Walkthrough
####Getting Started
- Create a one-page application in Xcode.
- MapKit is another framework that isn't automatically included in your Xcode project. At the top of the ViewController file, add this line so that all of MapKit's functionality is available to us.
```Swift
import MapKit
```
- In the Object Library, find the Map Kit View object and drag it into the storyboard. 
- As with any other object that we interact with from the view controller, we need to connect the map object to the controller with an IBOutlet. Just like before, you can do this by right-clicking on the map in the storyboard and dragging the mouse into the top of the ViewController class. Name the connection mapView.
<p align="center">
  <img src="images/mapView-connection.png" height="300px" hspace="20">
</p>
- Next, drag a button beneath the map and change the button's text to read "Find my house". It should look something like this:
<p align="center">
  <img src="images/initial-map-view.png" height="350px" hspace="20">
</p>


Completed map app [here]()
####Bonus Tasks




