##A Closer Look at Strings

Strings are a special data type that come with their own properties and methods. This just means that a string is able to tell us information about itself (instance properties), and it also has a set of actions that it can perform on itself (instance methods). 


Instance Properties |     Instance Methods
:----------------:  |    :------------------:
characters          |     append(_: Character)
endIndex            |     hasPrefix(_:)
lowercaseString     |     hasSuffix(_:)
startIndex          |     insert(_:atIndex:)
uppercaseString     |     removeAtIndex(_:)

[Full list of String instance properties and instance methods in Swift](https://developer.apple.com/library/prerelease/mac/documentation/Swift/Reference/Swift_String_Structure/index.html#//apple_ref/doc/uid/TP40015181-CH1-DontLinkElementID_31)


- Open up a new sandbox and assign your name to a variable called myName. To use an instance property or method on a string, just attach the property/method to the end of the string or variable with a "." Give it a try! What happens when you type in myName.uppercaseString on the next line?



###More tools: 
```Swift 
var greeting = "Hi! My name is Jim, what's yours?" 
```
  - To retrieve, or return, a single character in a string, start by adding square brackets at the end of the string: greeting[]. Inside the brackets, we'll add the location, or index, of the first character in the string: greeting[greeting.startIndex]. This works the same way for the endIndex property.

  - To get an index in the middle of a string, we can add the advancedBy(), successor(), or predecessor() methods after startIndex() or endIndex(). For instance, one way to return the "!" from this string would be like this:

```Swift
greeting[greeting.startIndex.successor().successor()]
```
We could also do this:
```Swift
greeting[greeting.startIndex.advanceBy(2)]
```

In programming, there are always multiple ways to do accomplish a task. As you continue learning, trying different methods, and observing how other people solve the same problems, you'll get better at picking the best tool for the job.


##Practice with a partner
1. Create a string that contains your favorite word. It can be in any language!

2. Now let's make all the characters uppercase in the string "hey! can you hear me?"

3. Next, make every character lowercase in the sentence "SHHHHH - We're in the Library!!!"

4. Find a method that can tell you how many characters are in the string "supercalifragilisticexpialidocious"

5. Capitalize the first letter of the first, middle, and last names of "margaret heafield hamilton"

6. Change the period in this sentence to an exclamation point: "I just won the powerball jackpot."

7. Once with string interpolation and once with string concatenation, add together the strings "zip", "zap", and "zop".

8. There is a typing error in the following string. Use a method to remove the extra character: "Programming is so mulch fun!"
