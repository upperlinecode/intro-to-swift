//: Playground - noun: a place where people can play

import UIKit

//Review of functions and iteration from yesterday

//Distances from Sun to each planet (and Pluto)
//Mercury: 57,910,000 km
//Venus: 108,200,000 km
//Earth: 149,600,000 km
//Mars: 227,940,000
//Jupiter: 778,330,000 km
//Saturn: 1,424,600,000 km
//Uranus: 2,873,550,000 km
//Neptune: 4,501,000,000 km
//Pluto: 5,945,900,000 km
//1. Write a method called planetLocater that takes in one parameter, planet: String, and returns a string. Give the parameter a default value of "Earth".
//planetLocater() //returns "Earth is 149,600,000 km from the Sun."
//planetLocater("Mercury") //returns "Mercury is 57,910,000 km from the Sun."
//planetLocater("Neptune") //returns "Neptune is 4,501,000,000 km from the Sun."

func planetLocater(planet: String = "Earth")->String {
    var distance: Int
    switch planet {
    case "Mercury":
        distance = 57910000
    case "Venus":
        distance = 108200000
    case "Earth":
        distance = 149500000
    case "Mars":
        distance = 227940000
    case "Jupiter":
        distance = 778330000
    case "Saturn":
        distance = 1424600000
    case "Uranus":
        distance = 2873550000
    case "Neptune":
        distance = 4501000000
    case "Pluto":
        distance = 5945900000
    default:
        distance = 149500000
    }
    
    return "\(planet) is \(distance) km from the Sun."
}
planetLocater() //returns "Earth is 149,600,000 km from the Sun."
planetLocater("Mercury") //returns "Mercury is 57,910,000 km from the Sun."
planetLocater("Neptune") //returns "Neptune is 4,501,000,000 km from the Sun."


//2. Write a method called fence that takes in an argument posts of type Int that prints out fences of differing lengths.
//hint: use a for-in loop
//Example output:
//fence(5) //prints: |--|--|--|--|
//fence(2) //prints: |--|
//fence(15) //prints: |--|--|--|--|--|--|--|--|--|--|--|--|--|--|

func fence(posts: Int) {
    var fence = "|"
    for _ in 1...(posts - 1) {
        fence += "-|"
    }
    print(fence)
}
fence(5) //prints: |--|--|--|--|
fence(2) //prints: |--|
fence(15) //prints: |--|--|--|--|--|--|--|--|--|--|--|--|--|--|


//Bonus: A prime number is a number greater than 1 that can only be evenly divided by itself and 1. 
//The first five prime numbers are 2, 3, 5, 7, 11
//Write a function that can find the nth prime number
//primes(1) //returns 2
//primes(5) //returns 11
//primes(21) //returns 73

func primes(nthPrime: Int)->Int {
    var primes: [Int] = [2]
    var n = 3
    while primes.count < nthPrime {
        
        //set the flag to true initially
        var prime = true
        
        for var i = 2; i <= n - 1; i++ {
                
            //even division of a number thats not 1 or the number itself, not a prime number
            if n % i == 0 {
                prime = false
                break
            }
        }
            
        if prime {
            primes += [n]
        }
        
        n += 1
        prime = true
    }
    
    let answer = primes[nthPrime - 1]
    return answer
}

primes(1) //returns 2
primes(5) //returns 11
primes(21) //returns 73
