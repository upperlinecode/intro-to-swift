##Trivia App - Day Two
We're going to finish the trivia app that we started at the end of the day yesterday. So far, we've added a title label to the top of our page and a label in the center of the page that will later hold our various fun facts. The labels were pulled from the object library and we edited them using the attributes and size inspectors. We also added a background color by using the attributes inspector on the background of our storyboard.

####MVC Review
- Remember MVC? This stands for Model View Controller, and it describes the extremely popular design pattern that is used in desktop, mobile, and web applications. It's broken up into three parts"
  - The Model: this is where the data is kept. In our trivia app, this data will be an array of trivia facts.
  - The Controller: this takes the data from our model and feeds it into the view.
  - The View: this displays data to the user and let's the user input data into the application.

<br>

![source: developer.apple.com](https://developer.apple.com/library/mac/documentation/General/Conceptual/DevPedia-CocoaCore/Art/model_view_controller_2x.png)
<br>

####Setting up our model
- Remember our AboutPage app that we built? Our model in that app held several pieces of data: a name, age, bio, and an array of favorite movies:
```Swift
struct About {
    let name: String = "Chad"
    let age: Int = 15
    let bio: String = "NYC Born and Bred"
    let favoriteMovies: [String] = ["Die Hard", "Casino Royal", "The Return of the King"]
}
```
- We need to create a new file to hold our model. Look at the document tree in the Navigator. In the same folder with Main.storyboard and ViewController.swift, create a new file called TriviaModel.swift (when it asks you what kind of file you want to create, select swift file).
- This time, we're going to hold our data in a struct called TriviaModel. We'll go over structs more later. For now, just remember that it's a way of holding similar data together:
```Swift
struct TriviaModel {

}
```
- For our app, we need a list of interesting facts that we will present, one by one, in the view. We are going to store this list in an array of strings. Copy and paste this array into your struct:
```Swift
struct TriviaModel {
    let facts: [String] = ["When hippos are upset, their sweat turns red.", "29th May is officially 'Put a Pillow on Your Fridge Day'.", "If you lift a kangaroo’s tail off the ground it can’t hop.", "A mantis shrimp can swing its claw so fast it boils the water around it and creates a flash of light.", "Honey does not spoil. You could feasibly eat 3000 year old honey.", "The state sport of Maryland is jousting.", "If you were to remove all of the empty space from the atoms that make up every human on earth, the entire world population could fit into an apple.", "The woolly mammoth was still around when the pyramids were being built.", "There are more possible iterations of a game of chess than there are atoms in the known universe.", "Written language was invented independently by the Egyptians, Sumerians, Chinese, and Mayans.", "It can take a photon 40,000 years to travel from the core of the sun to the surface, but only 8 minutes to travel the rest of the way to earth.", "A day on the planet Venus is longer than a year on Venus.", "The fingerprints of koala bears are virtually indistinguishable from those of humans.", "The time difference between when Stegosaurus and Tyrannosaurus lived is greater than the time difference between Tyrannosaurus and now.", "Russia is bigger than Pluto.", "Charlie Chaplin once entered a Charlie Chaplin look alike contest and lost.", "The bushes in Mario were just recolored clouds."]
}
```
####Connecting the model to the controller
- It's important to continually think of our application in terms of these three layers: the model and the view, connected by the controller. We seperate these layers so that our code is more readable, easier to debug, and easier to scale (make bigger). Luckily, files in the same Xcode project can easily communicate with each other, so sending data from one layer to the other is relatively simple. In this next step, the model (TrivaModel.swift) is going to communicate with the controller (ViewController.swift) and send it our array of trivia facts.
- 
####Connecting the view to the model
- 














