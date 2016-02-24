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
let boroughNames = ["Brooklyn", "Queens", "Manhattan", "The Bronx", "Staten Island"] //five boroughs of NYC
let boroughPopulations = [2621793, 2321580, 1636268, 1438159, 473279] //listed in same order as the names
let landArea = [71, 109, 23, 42, 58]
```
- We had to take for granted that the data in the second and third arrays were organized in the same order as the first array of borough names. If any of these arrays were shuffled, or some data was deleted, our program would start outputting incorrect information.
- There is another collection type in Swift called a dictionary. 
  - In an array, each value is associated with an index value. 0 => "Brooklyn", 1 => "Queens", 2 => "Manhattan", etc.
  - In a dictionary, each value is associated with a unique key.
  - In the student grades example, the student names would be the keys, and each would be associated with a value equal to their test score.
- Rewriting the arrays above as dictionaries could look something like this:
```Swift
let boroughPopulations: [String : Int] = ["Brooklyn": 2621793, "Queens": 2321580, "Manhattan": 1636268, "The Bronx": 1438159, "Staten Island": 473279]

let boroughLandArea: [String : Int] = ["Brooklyn": 71, "Queens": 109, "Manhattan": 23, "The Bronx": 42, "Staten Island": 58]

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
- Count: returns the number of key-value pairs in a dictionary.
```Swift
boroughLandArea.count //returns 5
```
- Count: returns the number of key-value pairs in a dictionary.
```Swift
boroughLandArea.count //returns 5
```
- Count: returns the number of key-value pairs in a dictionary.
```Swift
boroughLandArea.count //returns 5
```

###Conclusion

