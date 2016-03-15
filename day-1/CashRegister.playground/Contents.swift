//: Playground - noun: a place where people can play

import UIKit

var message = "In order to help out in the checkout line, we're going to write a program to calculate the price of apples at a store. A purchase of less than 5 apples costs 50 cents per apple. A purchase of between 5 and 24 apples costs 40 cents per apple. Any purchase of more than 25 apples costs a flat fee of $10.00"


var pricePerApple: Double = 0.0

var numberOfItems: Int = 5

var totalCost: Double

//write conditional statement here to calculate the correct total cost

if numberOfItems < 5 {
    pricePerApple = 0.50
    totalCost = Double(numberOfItems) * pricePerApple
} else if numberOfItems < 25 {
    pricePerApple = 0.40
    totalCost = Double(numberOfItems) * pricePerApple
} else {
    totalCost = 10
}




//print a message to the customer telling them the total cost of their purchase
message = "The total cost of the purchase is \(totalCost)"
print(message)








//-------------------------------------------------------------------------------------------------
//Add an additional branch to the conditional statement that removes 10% of the cost if

var onSale: Bool = true

numberOfItems = 30


//write your new conditional statement here

if numberOfItems < 5 {
    pricePerApple = 0.50
    totalCost = Double(numberOfItems) * pricePerApple
} else if numberOfItems < 25 {
    pricePerApple = 0.40
    totalCost = Double(numberOfItems) * pricePerApple
} else {
    totalCost = 10
}

if onSale {
    totalCost = totalCost * 0.9
}




//print a message to the customer telling them the total cost of their purchase
message = "The total cost of the purchase is \(totalCost)"
print(message)



//-------------------------------------------------------------------------------------------------
//Oranges are also available at the store. Add some code to your conditional so that it can handle the additional item. A purchase of less than 10 oranges costs 80 cents per orange. A purchase of between 11 and 20 oranges costs 60 cents per orange. Any purchase of more than 20 oranges costs a flat fee of $12.00"

var item: String = "orange"
var pricePerOrange: Double = 0.0
onSale = true
numberOfItems = 5


//write your new conditional statement here
if item == "apple" {
    if numberOfItems < 5 {
        pricePerApple = 0.50
        totalCost = Double(numberOfItems) * pricePerApple
    } else if numberOfItems < 25 {
        pricePerApple = 0.40
        totalCost = Double(numberOfItems) * pricePerApple
    } else {
        totalCost = 10
    }
} else if item == "orange" {
    if numberOfItems < 10 {
        pricePerOrange = 0.80
        totalCost = Double(numberOfItems) * pricePerOrange
    } else if numberOfItems < 21 {
        pricePerOrange = 0.60
        totalCost = Double(numberOfItems) * pricePerOrange
    } else {
        totalCost = 12
    }
}

if onSale {
    totalCost = totalCost * 0.9
}






//print a message to the customer telling them the total cost of their purchase
message = "The total cost of the purchase is \(totalCost)"
print(message)






//-------------------------------------------------------------------------------------------------
//Final Challenge: add a variable so that the user can input the amount of money that they are paying, and print a message letting them know how much change they are getting back. Add in any other features that you think are missing!

item = "orange"
onSale = false
numberOfItems = 18

var amountPaying = 40.00


//write your new conditional statement here
if item == "apple" {
    if numberOfItems < 5 {
        pricePerApple = 0.50
        totalCost = Double(numberOfItems) * pricePerApple
    } else if numberOfItems < 25 {
        pricePerApple = 0.40
        totalCost = Double(numberOfItems) * pricePerApple
    } else {
        totalCost = 10
    }
} else if item == "orange" {
    if numberOfItems < 10 {
        pricePerOrange = 0.80
        totalCost = Double(numberOfItems) * pricePerOrange
    } else if numberOfItems < 21 {
        pricePerOrange = 0.60
        totalCost = Double(numberOfItems) * pricePerOrange
    } else {
        totalCost = 12
    }
}

if onSale {
    totalCost = totalCost * 0.9
}






//print a message to the customer telling them the total cost of their purchase
message = "The total cost of the purchase is \(totalCost). Here's your \(amountPaying - totalCost) dollars in change"
print(message)



