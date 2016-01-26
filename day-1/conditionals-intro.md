##Introduction to Conditionals

##SWBAT
- use boolean operators to test a statement's boolean value
- explain the need for if/else statements in code
- implement an if statement, and if/else statement, and an if/else if/ else statement in their code

##Lesson
- Up until this point we have written our Swift code out in individual lines, each one seperate from the others.
- It can be useful to write code that will only execute if certain conditions are true. This kind of code is called conditional, and a well written conditional statement reads a lot like a normal sentence.
```Swift
if somethingIsTrue {
  then execute this code
}
```
- The "something is true" part of the statement is where booleans come in. Remember that booleans can have either a true or false value. If somethingIsTrue has a value of true, then the code inside that branch will execute. If it has a value of false, nothing will happen.
```Swift
var cold = true
if cold {
  print("Don't forget to wear a coat when you go outside.")
}
```
