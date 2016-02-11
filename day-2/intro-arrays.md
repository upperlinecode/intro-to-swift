##Arrays

###Students Will Be Able To
- Create an array of any type and store it as a variable or constant
- Access any value in the array using square brackets
- Use multiple methods to add new data to an array
- Consult the Swift documentation to look up built-in array methods and properties

###Why
We've learned to store strings, numbers, and booleans in variables. But think with the class about cases in which this would be impractical. E.g. It would be difficult for Facebook if they had to create a new variable for each friend that you add. Instead, it would be much simpler for them to create something called "friends" that acted like a box to hold all of this data.

###Anticipated Pain Points
- returning values from a range of indices (array[2...5])
- what does it mean when a function returns a value? Store return values in variables and print lots of examples to the console with the whole class.

###Walkthrough
Prompt students to think of things that they would organize in a list. Have them discuss drawbacks to having all of these items in a list stored in a different variable or constant. What sort of problems could that cause as the list gets really big?
- Think of a column in an excel spreadsheet. Each cell contains data, and that data corresponds to a row number. The position in an array is referred to as the 'index number' and starts at 0.
![Array indexes](http://www.cs.grinnell.edu/~walker/courses/152.sp01/n-sqr-sort-1.gif)
- Pick one of the classes ideas and use it for the walkthrough. To start, build an array and fill it with a few pieces of data:
```Swift
var shoppingList = ["milk", "eggs", "bread", "turkey", "olive oil"]
```
- What if we just want to access one of the items from this array? After the array, put the index of the target item inside of square brackets. This is how you might store the first two items in two different variables. Notice that the first item has an index of zero.
```Swift
var item1 = shoppingList[0]
var item2 = shoppingList[1]
```
- You can access a range of values from an array. The syntax is similar to accessing a single value. 
```Swift
var firstThreeItems = shoppingList[0...2]
```
- There are a few different ways that we could add an item to our shopping list. First of all, we could simply use the + operator. But we need to store the sum of the addition back in the original variable if we want to change the original array.
```Swift
shoppingList = shoppingList + ["mushrooms"]
```
- This is kind of wordy though, and we can shorten it by using the += operator.
```Swift
shoppingList += ["mushrooms"]
```
- To make it even easier, there is a method built into the Swift language.
```Swift
shoppingList.append("mushrooms")
```

- Another incredibly useful method that comes with Swift arrays is the count method. This tells us the number of elements in the array.
```Swift
shoppingList.count => 6
```
Break for [twitter arrays mini-lab](https://github.com/jrectenwald/intro-to-swift/blob/master/day-1/twitter-arrays-mini-lab.md)
- Show the students the [swift documentation about arrays](https://developer.apple.com/library/ios/documentation/Swift/Reference/Swift_Array_Structure/index.html#//apple_ref/doc/uid/TP40015178-CH1-DontLinkElementID_16) and look at the instance properties and instance methods. Look at the descriptions for some of these while trying them out in the xcode playground.
- shoppingList.insert("celery", atIndex: 0) inserts celery in the first position in the array and pushes all of the other elements back.
```Swift
shoppingList.insert("apples", atIndex: 2)
```
- removeLast() vs. popLast(): both of these methods will delete the last element in the array and return the value of the deleted item. The difference is that removeLast() will throw an error if the array is empty, and popLast() will return nil when called upon an empty array.
  - Use this as an opportunity to talk about what "returned" means. Look at the values of deletedItem after the following line of code.
```Swift
var deletedItem = shoppingList.popLast()
```
- We can also delete items from any index using the removeAtIndex(_:atIndex:) method:
```Swift
shoppingList.removeAtIndex(4)
```
- If we need to check to see if an array contains a certain item, you can use the contains() method. This returns either true or false.
```Swift
if shoppingList.contains("pizza") {
  print("Awesome! I love pizza.")
} else {
  print("Can we buy some pizza?")
}
```
Break for [array methods practice](https://github.com/upperlinecode/intro-to-swift/tree/master/day-2/ArrayMethodsPractice.playground)

###Conclusion
Storing data in an array is similar to storing it in seperate variables. With an array though, we can refer to many pieces of data using the same name, and we get methods from Swift to let us add, access, edit, add delete data in the array. 
