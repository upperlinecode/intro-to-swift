//: Playground - noun: a place where people can play

import UIKit
import Darwin


var message = "This calculator will be a little bit more advanced than the last one we made. We are going to make our program a little bit smarter by adding conditionals."





var num1: Double = 10.0

var num2: Double = 6.5

var mathOperator: String  = "+"

var answer: Double 

//add conditional statement here
if mathOperator == "+" {
  answer = num1 + num2
} else if mathOperator == "-" {
  answer = num1 - num2
} else if mathOperator == "*" {
  answer = num1 * num2
} else if mathOperator == "/" {
  answer = num1 / num2
}

print(answer)









//Bonus Round: give the use the option of rounding their answer to the nearest whole number. Write a more complex conditional statement that can handle the extra decision.

num1 = 5.5

num2 = 3.2

mathOperator = "/"

answer

var isRounded: true

//add conditional statement here
if mathOperator == "+" {
  answer = num1 + num2
} else if mathOperator == "-" {
  answer = num1 - num2
} else if mathOperator == "*" {
  answer = num1 * num2
} else if mathOperator == "/" {
  answer = num1 / num2
}

if isRounded {
  answer = floor(answer)
}

print(answer)









//Double Bonus Round
//Add more math functions to your calculator. Start out with a power function and a square root function, and then move on to some more advanced tools like sine or log.

num1 = 1.1

num2 = 8.5

mathOperator = "^"

isRounded = true

//add conditional statement here
if mathOperator == "+" {
  answer = num1 + num2
} else if mathOperator == "-" {
  answer = num1 - num2
} else if mathOperator == "*" {
  answer = num1 * num2
} else if mathOperator == "/" {
  answer = num1 / num2
} else if mathOperator == "^" {
  answer = pow(num1, num2)
} else if mathOperator == "sqrt" {
  answer = pow(num1, 0.5)
}

if isRounded {
  answer = floor(answer)
}

print(answer)


