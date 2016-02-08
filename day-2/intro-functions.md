##Functions
####Motivation
Think about all of the built-in methods we've used for Strings and Arrays: count(), insert(), removeAtIndex(), ect. They took common tasks and packaged up the code for everyone to use. We can create our own methods, or functions, to organize our code and prevent repetition.

- Imagine that we want to give somebody instructions. Let's say, to bake a cake.
```Swift
print("1. Take out a bowl and mixing spoon.")
print("2. Add 2 cups of sugar to the bowl.")
print("3. Mix in 1.5 cups of flour.")
print("4. Add 1 teaspoon of salt.")
print("5. Mix in 1 tablespoon of baking powder.")
print("6. Combine two eggs and two cups of milk in a bowl and stir.")
print("7. Add eggs and milk to dry ingredients.")
print("8. Bake for 45 minutes at 375 degrees.")
```
-Every time you want to give these instructions, it would be easier if you didn't have to type out every line. We can simplify the process by creating our own function. Functions in Swift must contain a few things:
  - the func keyword
  - the name of your function, which you will later use to invoke your function
  - {} curly braces to signal the beginning and end of your function's code.
```Swift
func cakeInstructions() {
  print("1. Take out a bowl and mixing spoon.")
  print("2. Add 2 cups of sugar to the bowl.")
  print("3. Mix in 1.5 cups of flour.")
  print("4. Add 1 teaspoon of salt.")
  print("5. Mix in 1 tablespoon of baking powder.")
  print("6. Combine two eggs and two cups of milk in a bowl and stir.")
  print("7. Add eggs and milk to dry ingredients.")
  print("8. Bake for 45 minutes at 375 degrees.")
}
```
- Now, every time we need to print the instructions, we can call the cakeInstructions function, and all of the print statements will run.
```Swift
print("Hey, how do I bake a cake?")
cakeInstructions()
print("Sorry, I wasn't listening could you say that again?")
cakeInstructions()
print("Oh that's great, can you explain that again to my friend here?")
cakeInstructions()
```
- We can also make methods that will return a value. For instance, what if we want to make a function that stores the number of seconds in a year, we could create a function called secondsInAYear:
```Swift
func secondsInAYear() {
    let seconds = 365*24*60*60
    print("There are \(seconds) seconds in a year.")
}
```
- While this prints a value though, we can't actually do anything with the value that we calculate. If we want to return that number and use it outside the function, we need to add two things to our function:
  - A return type in the first line of our function's definition. In this case, it will be returning an integer.
  - The return keyword preceding the value that we want to return.
```Swift
func secondsInAYear()->Int {
    return 365*24*60*60
}
var secondsInOneThousandYears = 1000 * secondsInAYear()

print("There are \(secondsInOneThousandYears) seconds in one thousand years.")
```
Break for [functions practice](https://github.com/upperlinecode/intro-to-swift/tree/master/day-2/FunctionsPractice1.playground)
