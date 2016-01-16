/**

- Every app that you use on your phone has data. That data becomes useful when it is displayed in a meaningful way. Swift allows us to do this.
- Perhaps the most fundamental thing we can do to data is to store it. Data in swift can either be stored as a constant or a variable. 
- have the students name an app that they use. Brainstorm about a piece of data that is going to stay the same the entire time you are using the app. eg. Angry Birds - when you create an account, the username that you enter is going to stay on the screen, unchanged. 
- in a case like this, it is convention to let swift know that this data will not change. we do so by assigning it to a constant. A constant is a word that refers to a piece of data and is immutable, meaning xcode will throw an error if we ever attempt to change it. Assigning this data looks pretty similar to a simple algebraic expression, with one addition. We begin the statement with 'let', which is a keyword in swift. Assigning your username to a constant might look something like this:

*/

let username = "angrypig1673"

/**

- Besides your username, you a round of angrybirds would also have your score displayed on the screen. This is a value that will change throughout the game. We would start out by assigning a value of zero to the score variable. This command uses a different swift keyword, var:

*/

var score = 0

//We can reassign a new value to score once a bird destroys a tower. We don't need to use the keyword var anytime after the initial assignment

score = 100

/**

 - Notice that we put quotation marks around the username, but not around the score. This is because not all data is the same. There are many different data types in swift, but we can focus on just four: Integer, Double, String, and Boolean. 
      - integers are whole numbers
      - type double is used for decimal numbers
      - strings are sequences of characters surrounded by quotation marks.
      - booleans have two possible values: true or false.

- Try to assign a value of 5.5 to the score. An error will appear in the console, telling you that you cannot assign a value of type double to type int

- Sometimes, you might see a variable or constant declared with an explicit declaration of data type.

*/

let username: String = "angrypig1673"
var score: Int = 3
var level: Double = 4.3
var gameOver: Bool = false

/**

 - This is not neccessary though. Swift is able to guess the type of the data from the first value that we give it. It's main purpose is to ensure that you don't pass the incorrect type of data to a variable by mistake. 

 - Some fun things we can do with strings: 

      - let's say you want a message to appear for the user at the end of every level. Giving the same message at the end of every level is called 'hard-coding'. 
 
*/

var message = "Congratulations! You destroyed all of the pigs! Time to move to the next level"

/**

 - This works fine, but wouldn't it be so much better if we could include the username in there to make it a little more personal? We can do this using something called string interpolation. You can insert a constant or variable into a string by placing it inside parenthesis preceded by a '\'
 
*/

message = "Congratulations \(username)! You destroyed all of the pigs! Time to move to the next level"

/**

 - You can do this with as many variables as you would like. Have the students interpolate some more values into this message. Encourage them to make some more variables that might be needed into the game. 
 
*/

let numberOfPigs = 8
message = "Congratulations \(username)! You destroyed all \(numberOfPigs) pigs and completed level \(level) with a final score of \(score)!"

/**

 - Swift also allows us to execute mathematical operations on these variables. For instance, to add the score for one round to the total score you could execute the following code:
 
*/

var totalScore = 0
var roundScore = 900
totalScore = totalScore + score

/**

 - Let the students play around with +, -, *, and %. Discuss what operation each is doing. Have them mix integers and doubles in the same operations. Make sure all students are familiar with PEMDAS. Discuss what happens when you divide 4/3 vs 4/3.0 vs 4/"3". Show them how to convert data types
 
*/

4/Double(3)


