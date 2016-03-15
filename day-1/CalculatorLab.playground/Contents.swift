//: Playground - noun: a place where people can play

import UIKit
import Darwin

var mathProblem = "Welcome to Upperline Calculator! Follow the directions in the comments and fill in the missing values to complete the calculations"


//-------------------------------------------------------------------------------------------------
// example
// addition

var num1 = 1

var num2 = 1

var answer = num1 + num2

//interpolate so that it prints the string "1 + 1 = 2"
print("\(num1) + \(num2) = \(answer)")

//-------------------------------------------------------------------------------------------------
// 1
// subtraction
num1 = 55

num2 = 40

answer = 55 - 40

//interpolate so that it prints the string "55 - 40 = 15"
print("\(num1) - \(num2) = \(answer)")


//-------------------------------------------------------------------------------------------------
// 2
// multiplication
num1 = 4

num2 = 3

answer = num1 * num2

//interpolate so that it prints the string "4 * 3 = 12"
print("\(num1) x \(num2) = \(answer)")


//-------------------------------------------------------------------------------------------------
// 3
// division
num1 = 20

num2 = 4

answer = 20 / 4

//interpolate so that it prints the string "20 / 4 = 5"
print("\(num1) / \(num2) = \(answer)")


//-------------------------------------------------------------------------------------------------
// 4
// modulus
// use the modulus (%) operator to find the remainder when you divide 453 / 7
num1 = 453

num2 = 7

answer = 453 % 7

//interpolate so that it prints the string, complete with the answer "453 % 7 = ___"
print("\(num1) % \(num2) = \(answer)")


//-------------------------------------------------------------------------------------------------
// 5
// exponents
// use a method in the Darwin library to find the answer to 54^3
num1 = 54

num2 = 3

var power = pow(54.0, 3.0)

//interpolate so that it prints the string "54^3 = ___"
print("\(num1)^\(num2) = \(power)")


//-------------------------------------------------------------------------------------------------
// 6
// mixed bag
num1 = 60

num2 = 5

var num3: Int = 8

var num4: Int = 3

answer = (num1 / num2) + (num3 % num4)

//interpolate so that it prints the string "(60 / 5) + (8 % 3)"
print("(\(num1) / \(num2)) + (\(num3) % \(num4)) = \(answer)")


//-------------------------------------------------------------------------------------------------
// 7
// mathematical constants
// use the Darwin library to get the value of pi

var pi = M_PI


//interpolate so that it prints the string "The value of pi is approximately 3.141592653589793"
print(pi)
