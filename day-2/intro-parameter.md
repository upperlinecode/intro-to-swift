##Functions with Parameters

###Students Will Be Able To
- Define a function with a return value and one parameter
- Explain the difference between a parameter and an argument

###Why
Every app that you use on your phone contains data. That data becomes useful when it is displayed in a meaningful way. Swift allows us to do this. Before we start manipulating and displaying data, we need to learn how to store it and access it later. Data in swift can either be stored as a constant or a variable.

###Anticipated Pain Points
- 

###Walkthrough

- We've used lots of built-in Swift methods, and most of them were were more flexible than the functions we've been writing so far today. For instance, when we used the contains() method for arrays we were able to pass a value into the function. We can pass anything into the function.

- To pass a value into a function, we add a parameter to the definition. This parameter defines the name that we will use to hold the value which we pass in. The actual value passed in is called the argument.

- Yesterday, we used the modulo operation (%, used to find the remainder of a division operation) to see if a number is even or odd. Packaging up this code into a method lets us reuse it whenever we want.
```Swift
func isEven(num: Int) -> Bool {
    if num % 2 == 0 {
        return true
    }
    return false
}
even(4) //returns true
even(3) //returns false
```

- Earlier today, we made some methods for greeting people.
```Swift
func greeting() -> String {
  return "Hello! How are you doing?"
}
print(greeting()) //returns "Hello! How are you doing?"
```
- We can make this a little more personal by including a function parameter. A parameter is a variable that is used inside the function. The value of the variable assignment, called the argument, goes inside the parentheses after the function's name. We need to specify the name and type of the parameter in the function's definition.
```Swift
func personalizedGreeting(name: String) -> String {
  return "Hello, \(name)! How are you doing?"
}

print(personalizedGreeting("Joe")) //returns "Hello, Joe! How are you doing?"
```
- We can even pass in an array as the argument.
```Swift
var stations: [String] = ["14 St-Uniun Sq", "Astor Pl", "Bleeker St", "Spring St", "Canal St", "Brooklyn Bridge-City Hall", "Fulton St", "Wall St", "Bowling Green"]

func subwayDescription(stations: [String]) -> String {
    return "The first stop on this line is \(stations[0]) and the last stop is \(stations[stations.endIndex.predecessor()])"
}

subwayDescription(stations)
//returns "The first stop on this line is 14 St-Uniun Sq and the last stop is Bowling Green"
```

Break for [functions practice - 2](https://github.com/upperlinecode/intro-to-swift/tree/master/day-2/FunctionsPractice2.playground)
