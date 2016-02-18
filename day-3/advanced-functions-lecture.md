##Advanced Functions

###Students Will Be Able To
- Define a function with multiple parameters
- Assign a default value to a parameter
- Define a function with multiple return values


###Why
There is no way that we could properly master all of the intricacies of writing functions in one day. And the more we learn about them, the more powerful they become. More advanced function techniques allow our code to be more readable and more concise. As a developer you will also read a lot of functions written by other developers. The more familiar with functions you become, the easier it will be to understand other people's code.  

###Anticipated Pain Points
- Make sure students know to add default parameters to the end of the list of parameters. This ensures that non-default parameters will always be called in the correct order.
- Adding multiple return values requires using tuples, which is a new data type for the students.


###Walkthrough
####Multiple Parameters
- Remember that a parameter is a special kind of variable that can be passed into a function. They are defined within the function's parentheses, and their definition includes both the parameter's name and the type.
```Swift
func pet(species: String) {
  print("I love animals. I just got a new pet \(species)!")
}
pet("dog") //prints "I love animals. I just got a new pet dog!" 
```
- Adding more parameters works the same way. Simply seperate them by commas.
- When calling the function, there are some extra rules regarding multiple parameters. 
  - The first argument should be included in the function call in the same way as when there was only one parameter.
  - Parameters after the first must have argument labels. This just means the argument is preceded by the parameter's name and a colon.
```Swift
func pets(count: Int, species: String) {
  print("I love animals. I just got \(count) new \(species)s!")
}
pets(5, species: "dog") //prints "I love animals. I just 5 new dogs!"


func medalStand(firstPlace: String, secondPlace: String, thirdPlace: String) {
  print("Gold Medal Winnder: \(firstPlace)")
  print("Silver Medal Winnder: \(secondPlace)")
  print("Bronze Medal Winnder: \(thirdPlace)")
}
medalStand("Allison", secondPlace: "Melanie", thirdPlace"George")
```

####Default Parameters
- We can define parameters so that they take on a default value if we don't give them a value in the method call. Simply assign a value to the parameter after the parameter's type.
```Swift
func pets(count: Int, species: String = "parakeet") {
  print("I love animals. I just got \(count) new \(species)s!")
}
pets(3) //prints "I love animals. I just 3 new parakeets!"
```
- Make sure that you list your default parameters last. This won't neccessarily lead to errors, but it's considered good style.

Break for [advanced functions - practice 1](https://github.com/upperlinecode/intro-to-swift/tree/master/day-3/AdvancedFunctionsPractice1.playground)

####Multiple Return Values
- So far we've only returned single values, like this:
```Swift
func squared(number: Double)->Double {
  return pow(number, 2.0)
}
squared(4.0) //returns 16.0
```
- Here is an example of a time we may want to return two values. This function accepts an array of strings. Each food in the array is ordered from favorite to least favorite. How could we return both the favorite and least favorite strings from this array?
```Swift
func favoriteFoods(foodRanking: [String])->String {
  print("I like a lot of different foods. My favorite is \(foodRanking.first) and my least favorite is \(foodRanking.last).")
  return foodRanking.first
}
```
- For this, we need to learn about a new data type called tuples. Tuples can group multiple values into a single value. The syntax looks a little like listing multiple parameters. Just seperate the values with commas, and surround the list of values with parentheses.
```Swift
let myName = (firstName: "Peter", middleName: "Derek", lastName: "Coleman")
print(myName.firstName) //prints "Peter"
```
- To return multiple values from a function, just return a tuple.
```Swift
func favoriteFoods(foodRanking: [String])->(favoriteFood: String, leastFavoriteFood: String) {
  return (foodRanking.first, foodRanking.last)
}
let foodPreferences = favoriteFoods["pizza", "salads", "sweet potatoes", "chicken", "corn on the cob", "pasta"]
print("I like a lot of different foods. My favorite is \(foodPreferences.favoriteFood) and my least favorite is \(foodPreferences.leastFavoriteFood).")
```

Break for [advanced functions - practice 2](https://github.com/upperlinecode/intro-to-swift/tree/master/day-3/AdvancedFunctionsPractice2.playground)
###Conclusion
We just saw that we can make our functions more versatile and complex with multiple parameters, default parameters, and multiple return values. The fundamentals of what a parameter or return value is has not changed, but we're gaining an appreciation for Swift and the many things we can do with it.
There are many more topics in function writing to explore: external parameter names, variadic parameters, function types, and more. For now, what's important is to practice what you know, look up things that you come across and don't understand, and keep writing cool programs.
<br>
<br>
###Optional Add-On: Variadic Parameters
- Swift has a type of parameter called a variadic parameter. It's used to pass in a variable number of arguments into a function. This is what the syntax looks like:
```Swift
func average(numbers: Double...) -> Double {
    var total = 0.0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
average(4.2, 4.6) //returns 4.4
average(2.5) //returns 2.5
average(2.5, 7.5, 4.2, 9.8, 4.1) //returns 5.62
```
- A variadic parameter is desclared by adding three period characters after the parameter type.
- The arguments are passed into the function as an array with the name specified in the parameter list.
- In this case, the variadic parameter is numbers
- A function can have no more than one variadic parameter
