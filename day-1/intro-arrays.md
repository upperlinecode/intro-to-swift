- Motivation: prompt students to think of things that they would organize in a list. Have them discuss drawbacks to having all of these items in a list stored in a different variable or constant. What sort of problems could that cause as the list gets really big?
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
