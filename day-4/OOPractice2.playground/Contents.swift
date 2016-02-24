//: Playground - noun: a place where people can play

import UIKit

//There are three common scales that are used to measure temperature: Celsius, Fahrenheit, and Kelvin
//C = (F - 32) / 1.8
//F = 1.8 * C + 32
//K = C + 273

//Level One: Add a
//Make a struct called FreezingPoint that has three properties: celsius, fahrenheit, and kelvin. Give them all default values equal to the freezing point of water.


struct FreezingPoint {
    var celsius, fahrenheit, kelvin: Double
    
    init(celsius: Double = 0.0, fahrenheit: Double = 32.0, kelvin: Double = 273.0) {
        self.celsius = celsius
        self.fahrenheit = fahrenheit
        self.kelvin = kelvin
    }
    
}



//Level Two
//Make a struct called Celsius that has three properties: celsius, fahrenheit, and kelvin. Give celsius a default value of 0.0, and make the values of fahrenheit and kelvin correct values, converted from the celsius property.

struct Celsius {
    var celsius, fahrenheit, kelvin: Double
    
    init(celsius: Double = 0.0) {
        self.celsius = celsius
        self.fahrenheit = 1.8 * self.celsius + 32.0
        self.kelvin = self.celsius + 273.0
    }
    
}

//var tenDegreesCelsius = Celsius(celsius: 10.0)

//tenDegreesCelsius.celsius //returns 10.0
//tenDegreesCelsius.kelvin //returns 283.0
//tenDegreesCelsius.fahrenheit //returns 50.0




//Bonus: Level Three
//Create a struct called Temperature that has three properties: celsius, fahrenheit, and kelvin. Let the user only pass in a value for one of the three, and convert the other two values based on the argument



//var temp1 = Temperature(celsius: 10.0)
//var temp2 = Temperature(fahrenheit: 50.0)
//var temp3 = Temperature(kelvin: 283.0)

//temp1 //returns 10.0
//temp1 //returns 283.0
//temp1 //returns 50.0

//temp2 //returns 10.0
//temp2 //returns 283.0
//temp2 //returns 50.0

//temp3 //returns 10.0
//temp3 //returns 283.0
//temp3 //returns 50.0












