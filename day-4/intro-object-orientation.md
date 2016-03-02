##Object Orientation

###Students Will Be Able To
- Decide whether a structure or class would be appropriate in a given situation
- Define a class or a struct
- Create an instance of a class or a struct
- Access and set properties of a class or a struct
- Define instance methods for a class or a struct

###Why
Who knows how many people are on Facebook? Close to a quarter of the world is on Facebook (roughly 2 billion). What do you think the average number of friends a user has? What about the number of photos? How many likes happen in a day? We're talking about trillions of pieces of data that Facebook tracks and stores on huge tracts of land that they bought literally just to store all their data.

Object Orientation is a way to organize, manipulate and store data. It lets you create "factories" for objects, helping you to avoid writing the same code more than one time. This programing concept is used by every app you could think of: Facebook, Twitter, Gmail, or ESPN. Every user on Facebook has a username, age, and a list of friends. Whenever somebody new signs up for Facebook, an new object is created. There doesn't have to be a Facebook developer ready to write the code for this new user because they have a user "factory" that can generate the user automatically. It's one of the most important and pervasive concepts in computer programming and is an essential skill for any programmer.

###Anticipated Pain Points
- Understanding the differences between classes and structures will be hard to understand at first, and the students do not need an immediate grasp of this. In Swift, classes and structures are very similar and often either option will work very well. If they are confused reiterate that most custom data constructs will be classes, so a class is a good default choice. 

###Walkthrough
####Object Orientation with Classes
- Create an instance of a Facebook user with a dictionary.
```Swift
var user1: [String:String] = [
    "name" : "Kevan",
    "email" : "kevan@upperlinecode.com",
    "password" : "hopscotch",
    "friends" : []
]
```
- It would be unrealistic to create one of these dictionaries for every user on Facebook
- Instead, we can create a blueprint for each new user by defining a User class.
```Swift
class User {

}

let user1 = User()
```
- Define class and instance of a class - we created our class (blueprint) and an instance of a class above (actual user)
- One example of a class that we've already used is a String. When we make a string, we do more than just connect a bunch of characters. We create an object that has [*properties*](https://developer.apple.com/library/tvos/documentation/Swift/Reference/Swift_String_Structure/index.html#//apple_ref/doc/uid/TP40015181-CH1-DontLinkElementID_31) and [*methods*](https://developer.apple.com/library/tvos/documentation/Swift/Reference/Swift_String_Structure/index.html#//apple_ref/doc/uid/TP40015181-CH1-DontLinkElementID_32).
    - Follow the links to the Swift docs and take a look at a String's instance properties and instance methods. Have students think about the difference between the two groups.
    - List possible properties and methods that a Facebook User might have.
    - Name, hometown, school, birthday
    - post on wall, add friend, like post, comment on picture
- When we create our new User object, we want to be able to set certain properties for his profile: name, birthday, hometown, etc. To give the object these properties whenever it is created, we can add an initialization method.
    - To distinguish between the name argument and the name instance property, we can precede the property with "self". Self 
```Swift
class User {
    var name: String
    var birthday: String
    var hometown: String
    
    init(name: String, birthday: String, hometown: String) {
        self.name = name
        self.birthday = birthday
        self.hometown = hometown
    }
}
let user1 = User(name: "William", birthday: "July 10", hometown: "Pittsburgh")

user1.name // returns "William"
user1.birthday // returns "July 10"
user1.hometown // returns "Pittsburgh"
```
- You can access Swift properties with dot syntax (user1.hometown)
- You can also set the value of a property with dot syntax
```Swift
user1.name // returns "William"
user1.name = "Will"
user1.name // returns "Will"
```

- A method is a function that belongs to an instance of a class. The init() method is a special method that is only called once when the instance is created. We can give our user additional methods that it can use after initialization.
```Swift
class User {
    var name: String
    var birthday: String
    var hometown: String
    
    init(name: String, birthday: String, hometown: String) {
        self.name = name
        self.birthday = birthday
        self.hometown = hometown
    }
    
    func greeting() {
        print("Hi, my name is \(name).")
    }
}
let user1 = User(name: "William", birthday: "July 10", hometown: "Pittsburgh")


user1.greeting() //prints "Hi, my name is William."
```

Break for [Object Oriented Practice - 1](https://github.com/upperlinecode/intro-to-swift/tree/master/day-4/OOPractice1.playground)

####Object Orientation with Structures
- Sometimes, the data that we want to group together is much simpler than the properties of a User. For instance, in our trivia app we wanted out model to include an array of trivia facts and a method that returns a random fact. With such a focused group of data, we didn't need to create a new Class. Classes include a lot of abilities (which we haven't talked about yet) that our TriviaModel would never use. For situations like this, we could create a Structure, or struct.
```Swift
struct TriviaModel {
    
    let facts: [String] = ["When hippos are upset, their sweat turns red.", "29th May is officially 'Put a Pillow on Your Fridge Day'.", "If you lift a kangaroo’s tail off the ground it can’t hop.", "A mantis shrimp can swing its claw so fast it boils the water around it and creates a flash of light.", "Honey does not spoil. You could feasibly eat 3000 year old honey.", "The state sport of Maryland is jousting.", "If you were to remove all of the empty space from the atoms that make up every human on earth, the entire world population could fit into an apple.", "The woolly mammoth was still around when the pyramids were being built.", "There are more possible iterations of a game of chess than there are atoms in the known universe.", "Written language was invented independently by the Egyptians, Sumerians, Chinese, and Mayans.", "It can take a photon 40,000 years to travel from the core of the sun to the surface, but only 8 minutes to travel the rest of the way to earth.", "A day on the planet Venus is longer than a year on Venus.", "The fingerprints of koala bears are virtually indistinguishable from those of humans.", "The time difference between when Stegosaurus and Tyrannosaurus lived is greater than the time difference between Tyrannosaurus and now.", "Russia is bigger than Pluto.", "Charlie Chaplin once entered a Charlie Chaplin look alike contest and lost.", "The bushes in Mario were just recolored clouds."]
    
    
    func randomFact()->String {
        let arrayLength = facts.count
        let randomIndex = Int(arc4random_uniform(UInt32(arrayLength)))
        return facts[randomIndex]
    }
    
}
```
- Anytime there are only two or three properties that you want to relate, a struct is a great option to organize that data. For instance, a point on a plane has two important pieces of data: its x and y coordinates.
```Swift
struct Point {
    var x: Double = 0.0
    var y: Double = 0.0
}

var point1 = Point(x: 5.5, y: 6.2)
point1.x // returns 5.5
point1.y // returns 6.2
```
- We can give structs methods too. Let's give this struct a simple method: one to print its coordinates.
```Swift
struct Point {
    var x: Double = 0.0, y: Double = 0.0
    
    func displayCoordinates() {
        print("x: \(self.x), y: \(self.y)")
    }
}

```
Break for [Object Oriented Practice - 2](https://github.com/upperlinecode/intro-to-swift/tree/master/day-4/OOPractice2.playground)
###Conclusion
- Classes and Structures allow us to create the building blocks of our code. They organize our programs and make it easier to increase in scale.
- Since structs are only used for very simple cases of data encapsulation, in practice most custom data constructs should be classes, not structures.
- The init method allows for custom initialization. Otherwise, the instance will be instantiated with the default values that you defined.
- A method is a function that belongs to an instance of a class.
- You can retrieve and set properties of an instance using dot syntax. In Swift, you do not need to write a method for these actions.

