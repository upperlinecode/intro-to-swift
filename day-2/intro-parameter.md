- We've used lots of built-in Swift methods, and most of them were were more flexible than the functions we've been writing so far today. For instance, when we used the contains() method for arrays we were able to pass a value into the function. We can pass anything into the function.


- Earlier today, we made some methods for greeting people.
```Swift
func greeting() -> String {
  return "Hello! How are you doing?"
}
```
- We can make this a little more personal by including a function parameter. A parameter is a variable that is used inside the function. The value of the variable assignment goes inside the parentheses after the function's name. We need to specify the name and type of the parameter in the function's definition.
```Swift
func personalizedGreeting(name: String) -> String {
  return "Hello! How are you doing?"
}

print(personalizedGreeting("Joe"))
```
####Break for [functions practice - 2]
