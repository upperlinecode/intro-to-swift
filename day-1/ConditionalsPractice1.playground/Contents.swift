//: Playground - noun: a place where people can play

import UIKit

//Replace the '__' with comparison operators to make the following statements true
//Try to use a different comparison operator each time

//45 == 45

//-9 < 9

//100 <= 100000

//5.6 > 5.5


//Replace the '__' with comparison operators to make the following statements false
//Try to use a different comparison operator each time

//2 > 10

//22 < 22

//0 == -5

//3.3 >= 3.5




//-----------------------------------------------------------------------------------


//replace the blank with a conditional statement so that the lunch invitation is only printed if isHungry is true
var isHungry = false

//if isHungry {
//    print("Do you want to grab some lunch?")
//}






//replace the blank with a conditional statement that tests to see if a number is even. Hint: the % operator might be useful here.
var number: Int = 20 // = ______

//if number % 2 == 0 {
//    print("That number is even!")
//} else {
//    print("That number is odd!")
//}






//replace the blank with a conditional statement that only adds a fee to the ticket price if the luggage weight is over 50 pounds
var luggageWeight = 55
var ticketPrice = 150

//if luggageWeight > 50 {
//    ticketPrice += 20
//    print("An extra $20.00 fee was added to the plane ticket for going over the maximum weight.")
//} else {
//    print("No extra fees, have a nice flight!")
//}







//replace the blanks with a conditional statement that prints the correct statement depending on the carSpeed that you input.

var carSpeed: Int = 65 // = _____
var maximumSpeed = 70
var minimumSpeed = 45


//if carSpeed > 70 {
//    print("Slow down, you're speeding!")
//} else if carSpeed < 45 {
//    print("Speed up, you're holding up traffic!")
//} else {
//    print("You are at a great speed, just keep driving.")
//}





//challenge: write a conditional statement that mimics an automatic checkout machine at a store.
//if customerPayment is greater than the totalCheckoutCost, calculate the customer's change and print a statement like this:
        //Your change is $3.25. Thank you for shopping with us today.
//if customerPayment is less than the totalCheckoutCost, calculate the remaining balance and print a statement like this:
        //There is still $2.75 remaining on your balance.
//if customerPayment is equal to the totalCheckoutCost, print a statement wishing the customer a nice day.
        //Thanks and have a nice day!


var customerPayment: Double // = _______

var totalCheckoutCost: Double // = _______

//write conditional statement here:
if customerPayment > totalCheckoutCost {
        let change: Double = customerPayment - totalCheckoutCost
        print("Your change is $\(change). Thank you for shopping with us today.")
} else if customerPayment < totalCheckoutCost {
        let remaining = totalCheckoutCost - customerPayment
        print("There is still $\(remaining) remaining on your balance.")
} else if customerPayment == totalCheckoutCost {
        print("Thanks and have a nice day!")
} 














