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