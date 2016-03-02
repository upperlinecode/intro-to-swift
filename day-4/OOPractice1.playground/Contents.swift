//: Playground - noun: a place where people can play

import UIKit

//We just saw how we could represent a person using code. Now we're going to represent a dog the same way.

class Dog {
  
}

//Work through the following tasks one by one, in order. Each time, add to the dog class above. Each task has sample output that you should be able to replicate when you are done.


//1. Give the dog four properties, all with default values: name (string), breed (string), mood (string), and hungry (boolean).
    //var dog1 = Dog()
    //dog1.name //returns "dog"
    //dog1.breed //returns "unknown"
    //dog1.mood //returns "calm"
    //dog1.hungry //returns false



//2. Add an init method so that you can initialize new dogs with values for name, breed, mood, and hungry. It should still have the same default values for these properties
     //var dog2 = Dog(name: "Oreo", breed: "English Setter", mood: "excited", hungry: true)
    //dog2.name //returns "Oreo"
    //dog2.breed //returns "English Setter"
    //dog2.mood //returns 'excited'
    //dog2.hungry //returns true


//3. Add an instance method called playFetch(). It should set the dog's hungry property to true, set its mood property to playful, and print "Ruff!"
    //var dog3 = Dog(name: "Rhett", breed: "English Setter", mood: "excited", hungry: false)
    //dog3.hungry //returns false
    //dog3.mood //returns "excited"
    //dog3.playFetch() //prints "Ruff!"
    //dog3.hungry //returns true
    //dog3.mood //returns "playful"



//4. Add an instance method called feed(). If the dog is hungry, it should set hungry to false and print "Woof!". If the dog is not hungry, it should print "The dog doesn't look hungry"

    //var dog4 = Dog(name: "Partner", breed: "Golden Retriever", mood: "thoughtful", hungry: true)
    //dog4.hungry //returns true
    //dog4.feed() //prints "Woof!"
    //dog4.hungry //returns false



//5. Add an instance method called toString that returns a string type description of the dog:

    //var dog5 = Dog(name: "Rascal", breed: "Golden Retriever", mood: "feeling pawesome", hungry: true)
    //print(dog5.toString())
    //prints:
    //Name: Rascal
    //Breed: Golden Retriever
    //Mood: feeling pawesome


//Bonus: Add a type property called count that keeps track of how many dogs have been created so far.
    //There have been five dogs created so far
    //Dog.count //returns 5
