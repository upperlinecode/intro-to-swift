##Optionals

###Students Will Be Able To
- Understand the difference between an optional and a non-optional values
- Create optional variables and constants
- Force-unwrap optionals
- Use optional chaining as an alternative to force unwrapping


###Why
We've used values in different data types that seem like they represent nothing: 0 (Int), 0.0 (Double), ""(String), False (Bool). However, all of these values require the user to at one point assign a value to a variable. If a programmer forgets to assign a value to a variable, the program is going to break. The build will fail and it will tell you to give that variable a value. 

Sometimes, we want to give a class a property that can or cannot be assigned a value. If it doesn't ever get assigned a value, its value will be nil. A variable with a nil value, when handled correctly, will not cause a build failure. When a value has the option of being nil, it is called an optional value.


###Anticipated Pain Points
Some students might think they need to start making all of their types optional. For now, the primary reason we are showing them optionals is to help them debug errors in their code. A lot of the classes in Swift built by Apple programmers contain optional values, and they might need to unwrap these values.


###Walkthrough
- Take a look at this Person class. It has one instance property, name, and one instance method, hello(). 
```Swift
class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func hello() {
        print("Hello, my name is \(name)")
    }
}
```
- I can't think of a situation where an instance of Person wouldn't have a name. But what if we added another property, nickName?
```Swift
class Person {
    var name: String
    var nickName: String?
    init(name: String, nickName: String? = nil) {
        self.name = name
        self.nickName = nickName
    }
    
    func hello() {
        print("Hello. My name is \(name), but you can call me \(nickName).")
    }
}
```
- Here, nickName is an optional String. It can either be assigned a String value, or be given the value nil. Nil is not a String, it is simply _nothing_.
###Bonus


###Conclusion
