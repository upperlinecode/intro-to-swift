##Dictionaries

###Students Will Be Able To
- Determine when a dicitonary would be more beneficial than an array
- Create a new dictionary
- Edit and add to existing dictionaries
- Retrieve values from a dictionary
- Use common instance properties and methods of the Dictionary type.


###Why
Arrays have been very useful to us, and we've managed to use them in a wide variety of applications. But sometimes, organizing data only by an index value isn't enough. Dictionaries increase the amount of information that we can include in a data collection. An array might be sufficient to store a list of names of students in a class. But if we wanted to record a list of test scores in another array, it would be hard to keep track of which score belonged to each student. This is a case when dictionaries would help out.

###Anticipated Pain Points
- It's easy to forget when to use [], {}, or (). 

###Walkthrough
####Creating a new dictionary
- In a lab yesterday, we used the following three arrays:
```Swift
var boroughNames = ["Brooklyn", "Queens", "Manhattan", "The Bronx", "Staten Island"] //five boroughs of NYC
var boroughPopulations = [2621793, 2321580, 1636268, 1438159, 473279] //listed in same order as the names
var landArea = [71, 109, 23, 42, 58]
```
- We had to take for granted that the data in the second and third arrays were organized in the same order as the first array of borough names. If any of these arrays were shuffled, or some data was deleted, our program would start outputting incorrect information.
- There is another collection type in Swift called a dictionary. 
  - In an array, each value is associated with an index value. 0 => "Brooklyn", 1 => "Queens", 2 => "Manhattan", etc.
  - In a dictionary, each value is associated with a unique key.
  - In the student grades example, the student names would be the keys, and each would be associated with a value equal to their test score.
  - Retrieving a value from a dictionary is similar to doing so in an array. Add square brackets after the name of the dictionary, and put the key of the desired value inside of the brackets.

- We're creating 
 Borough (Key)|	 Population (Value)|
--------------|--------------------|
Brooklyn      |  2621793           |
Queens        |  2321580           |
Manhattan     |  1636268           |
The Bronx     |  1438159           |
Staten Island |  473279            |

- Rewriting the arrays above as dictionaries could look something like this:
```Swift
var boroughPopulations: [String : Int] = ["Brooklyn": 2621793, "Queens": 2321580, "Manhattan": 1636268, "The Bronx": 1438159, "Staten Island": 473279]

var boroughLandArea: [String : Int] = ["Brooklyn": 71, "Queens": 109, "Manhattan": 23, "The Bronx": 42, "Staten Island": 58]

boroughPopulations["Brooklyn"] //returns 2621793
boroughLandArea["Queens"] //returns 109
```
- Now, the populations and land areas will always be connected with the correct corresponding borough name.

####Dictionary properties and methods
- Similar to arrays, dictionaries have a series of previously-defined properties and methods that we can use.
- Count: returns the number of key-value pairs in a dictionary.
```Swift
boroughLandArea.count //returns 5
```
- Keys: returns an array of the keys in a dictionary.
```Swift
var boroughs = [String](boroughLandArea.keys)
boroughs[0] //returns "Manhattan"
```
- Values: returns an array of the keys in a dictionary.
```Swift
var landAreas = [Int](boroughLandArea.values)
landAreas[0] //returns 23
```
- Iterating through a dictionary is similar to iterating through an array. Simply include a name for the key and the value between 'for' and 'in':
```Swift
for (borough, population) in boroughPopulations {
    print("\(borough): \(population)")
}
//prints:
//Manhattan: 1636268
//Staten Island: 473279
//Brooklyn: 2621793
//Queens: 2321580
//The Bronx: 1438159
```

Break for [dictionaries practice](https://github.com/upperlinecode/intro-to-swift/tree/master/day-4/DictionariesPractice.playground)

###Conclusion
Like arrays, dictionaries are common in both Swift and in other languages as well. You will use them frequently, and soon will be able to quickly discern whether a situation calls for an array or a dictionary.
