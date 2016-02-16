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
- Another way of reading this in your head is "For each integer in the range from 1 to 10, print this: 
```Swift
"\(integer)^2 = \(integer * integer)"
```
- Anything inside of the { } will be applied to each element in the range.
- We could make this function even more versatile by giving it a parameter for the range's upper bound (This would be very difficult without iterations).
```Swift
func squares(upperBound: Int) {
    for integer in 1...upperBound {
        print("\(integer)^2 = \(integer * integer)")
    }
}
```
- You can also use a for loop to iterate through an array. Where we used a range before, insert the name of an array.
```Swift
func jediGoodbye(jediCouncil: [String]) {
    for jediMaster in jediCouncil {
        print("Goodbye \(jediMaster), may The Force be with you.")
    }
}
jediGoodbye(["Qui Gon", "Obi Wan", "Yoda", "Mace Windu"])
//prints
//Goodbye Qui Gon, may The Force be with you.
//Goodbye Obi Wan, may The Force be with you.
//Goodbye Yoda, may The Force be with you.
//Goodbye Mace Windu, may The Force be with you.
```
- On Monday we looked at a one-page application that displayed a user's information, including a list of his or her favorite movies. In order to pass the list of favorite movies to the view, the following string was interpolated:
```Swift
FavoriteMovies.text = "Favorite Movies:\n1. \(about.favoriteMovies[about.favoriteMovies.startIndex])\n2. \(about.favoriteMovies[about.favoriteMovies.startIndex.advancedBy(1)])\n3. \(about.favoriteMovies[about.favoriteMovies.startIndex.advancedBy(2)])"
```
###Conclusion
