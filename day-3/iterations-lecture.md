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
  print("1^2 = 1")
  print("1^2 = 1")
}
```


###Conclusion
