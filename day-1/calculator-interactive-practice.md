We're going to put what we've learned about variables and data types into practice. We're going to build a calculator that, believe it or not, works almost exactly like the one on your phone.

First, download MyCalculator.playground

Level One:
- You're going to store the equation that you're solving in the mathProblem variable. For starters, let's just try to calculate "1 + 1 = ". 

- Of course we could finish this string ourselves, but let's let the computer do the math for us. Without quotation marks, go ahead and add set the value of answer = 1 + 1. Swift will do the math for us and store the answer in the variable.

- Next, display the full equation with the answer in the console by adding together mathProblem and answer in a print statement.

- Did it work? If not, check out this post and see if you can fix the error: 
  http://stackoverflow.com/a/24647015/5438610


Level Two:

- Try to make a more complicated equation using Swift's * operator for multiplication and / operator for division. Does swift follow order of operations (PEMDAS)? Also, try out the modulus operator (%), which calculates the remainder when one number is divided by another.


Level Three:

- Swift can do much more than add, subtract, multiply, and divide. We can import, or include, new math functions in our playground by adding
```swift
import Darwin
```
to the top of your file. 