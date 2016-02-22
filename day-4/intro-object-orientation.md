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
####Programming Without Object Orientation
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
Break for Object Oriented Practice - 1

###Conclusion
