##Trivia App - Day Two
We're going to finish the trivia app that we started at the end of the day yesterday. So far, we've added a title label to the top of our page and a label in the center of the page that will later hold our various fun facts. The labels were pulled from the object library and we edited them using the attributes and size inspectors. We also added a background color by using the attributes inspector on the background of our storyboard.

####MVC Review
- Remember MVC? This stands for Model View Controller, and it describes the extremely popular design pattern that is used in desktop, mobile, and web applications. It's broken up into three parts"
  - The Model: this is where the data is kept. In our trivia app, this data will be an array of trivia facts.
  - The Controller: this takes the data from our model and feeds it into the view.
  - The View: this displays data to the user and let's the user input data into the application.

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
