##Iteration: For Loops
###Students Will Be Able To
- Use a for-in loop to:
  - iterate through an array
  - iterate through a range of integers
###Why
Iterations are very useful because they let you write small bits of code and execute it over and over again. You can iterate through an array and interpolate each element into a string. You could iterate through a range of numbers and perform an operation on each one. The possibilites are endless, and there are a lot of tools available for us. But we're going to start with the For Loop.

###Anticipated Pain Points
- Students are often confused about the variable that holds each value of the iteration. It is never declared with let or var, and they may have trouble understanding where it originates. This is a case where a constant is declared implicitly by adding it to the for loop's declaration. 

###Walkthrough
- Let's say we are writing a function that will display the first 10 perfect squares. With what we've learned so far, our only option is to write out each individual line:
```Swift
func squares() {
  print("1^2 = 1")
  print("2^2 = 4")
  print("3^2 = 9")
  print("4^2 = 16")
  print("5^2 = 25")
  print("6^2 = 36")
  print("7^2 = 49")
  print("8^2 = 64")
  print("9^2 = 81")
  print("10^2 = 100")
}
```
- It's easy to see that code written this way can get very lengthy, very fast. We can shorten this quite a bit with a for-loop by iterating through the range of integers from 1 to 10. You can create a range with a lower-bound number and an upper-bound number connected with three periods.
```Swift
func squares() {
    for integer in 1...10 {
        print("\(integer)^2 = \(integer * integer)")
    }
}
```
- Another way of reading this in your head is "For each integer in the range from 1 to 10, print this: '\(integer)^2 = \(integer * integer)'"
###Conclusion
