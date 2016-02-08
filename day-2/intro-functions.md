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
