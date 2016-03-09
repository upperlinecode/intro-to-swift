//: Playground - noun: a place where people can play

import UIKit
//follow the instructions to manipulate these examples of optional values. Try to use optional chaining rather than force unwrapping

//------------------------------------------------------------------------------------------------------------------------
//1. Unwrap and print the following variable, price
var price: Double? = 9.85



//------------------------------------------------------------------------------------------------------------------------
//2. Unwrap and print the following variable, hat
var hat: String? = "Fedora"






//------------------------------------------------------------------------------------------------------------------------
//3. Unwrap and print the following instance variables of myClothing: shoes and shirt
class Clothing {
    var shoes: String?
    var shirt: String?
}

let myClothing = Clothing()

myClothing.shoes = "Nikes"
myClothing.shirt = "T-Shirt"








//------------------------------------------------------------------------------------------------------------------------
//4. Below is a Person class and a Residence class. The person class has a property residence that is an optional Residence
// That means that the person can be created without a residence, and the value of residence will be nil until you assign it a value.
//
class Person {
    var residence: Residence?
}


class Residence {
    var address: String
    var numberOfBedrooms: Int
    var numberOfBathrooms: Double
    
    init(address: String, numberOfBedrooms: Int, numberOfBathrooms: Double) {
        self.address = address
        self.numberOfBedrooms = numberOfBedrooms
        self.numberOfBathrooms = numberOfBathrooms
    }
}

let jim = Person()
let house = Residence(address: "130 Bleeker St", numberOfBedrooms: 2, numberOfBathrooms: 1.5)
jim.residence = house

//Make a method residence() that prints one of two possible statements
//if the person has a non-nil residence, print out the residence
//if the person's residence is nil, print out "I do not have a residence at the moment."








//------------------------------------------------------------------------------------------------------------------------
//5. Below is a Car class. It has a property additionalFeatures that is an optional array of strings
class Car {
    var make: String
    var model: String
    var additionalFeatures: [String]?
    
    init(make: String, model: String, addionalFeatures: [String]? = nil) {
        self.make = make
        self.model = model
    }
}


//myCar is an instance of the Car class.
let myCar = Car(make: "Chev", model: "Cruze")
myCar.additionalFeatures = ["Air Conditioning", "CD Player", "Sunroof", "Leather Seats"]



//Use optional chaining to unwrap and print out a list of myCar's additional features
//Add a branch in the chain that print the message "No additional features" if additionalFeatures is nil
//Formating:
//Additional Features:
//1. Air Conditioning
//2. CD Player
//3. Sunroof
//4. Leather Seats









