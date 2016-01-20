/**                Pair Programming with Instructors Circulating

A day at Yankee Stadium

Practicing using let and var

1. Open a new XCode playground and name it ConstantsAndVariables. Go ahead and delete all of the code that they prebuilt 
for you. 

2. Create two constants, awayTeam and homeTeam. Set the home team equal to "Yankees" and the away team equal to "Red Sox".
  -the value of both of these should appear on the righthand column. This is a good way to check code as you are working.

3. Now let's store each team's score. These will change throughout the game, so they will go in variables called 
yankeesScore and redSoxScore.

4. First play of the game, Mookie Betts hits a fly ball out to left field and it is caught by Chris Young. 
This kind of information is useful to teams and fans, and the league works hard to record statistics from games. 
So let's store this event in a string on the next line in your xcode playground.

*/
    let event1 = "Mookie Betts flies out to left fielder Chris Young."

/**

5. This is cool! We are making serious contributions to MLB history. Go ahead and add a few more events to your code. 

*/

    let event2 = "Jackie Bradley called out on strikes."
    let event3 = "Xander Bogaerts walks."
    let event4 = "Travis Shaw strikes out swinging, catcher John Ryan Murphy to first baseman Greg Bird."
    let event5 = "Rusney Castillo flies out to right fielder Carlos Beltran."

/**
6. But wait! We have a problem. Take a look at the game events recorded in the MLB database just for this game: 
http://gd2.mlb.com/components/game/mlb/year_2015/month_10/day_01/gid_2015_10_01_bosmlb_nyamlb_1/eventLog.xml
There are a ton of events, and this only represents one of thousands of games that are played each year. It's 
not good coding practice to create such a large number of similar variables. What if we want to retrieve all 
of the events at once? What if we want to easily count the number of plays in the game? For this, we can use an array.
  - an array is a list of similar types of data. Assigning an array of strings to a variable is very similar to
  assigning a string to a variable. The array is surrounded by square brackets, and individual values are seperated 
  by commas. 
*/
    var shoppingList: [String] = ["Bread", "Peanut Butter", "Jelly"]

    //you can also do it without explicitly declaring the type

    var shoppingList = ["Bread", "Peanut Butter", "Jelly"]

/**

7. Go ahead and collect the first five plays of the game in a variable called events.

8. Now, when Allen Craig singles on a line drive to right fielder Carlos Beltran, we want to add that to the array.
we can do this a few different ways. 
    -we can just add an array with our new value to the original array
          - shoppingList = shoppingList + ["Milk"]
    -arrays also come with a special list of abilities, called methods 
    (take a look here https://developer.apple.com/library/ios/documentation/Swift/Reference/Swift_Array_Structure/index.html#//apple_ref/doc/uid/TP40015178-CH1-DontLinkElementID_17). 
    One of these, called append, can add a value to the end of an array. It works like this:
          - shoppingList.append("Milk")
Now you can add that Allen Craig's single to the end of the events array.

9. Quite often we will want to pull out a value from an array. All of an array's data are numbered, or indexed.
The first item in the array has an index of 0, the second has an index of 1, the next is 2, and so on. We can 
reference an item from an array using the name of the array followed by the item's index inside of square brackets.
    - for instance, var food = shoppingList[1] would assign "Peanut Butter" to food

Create a variable called last play, and assign to it the most recent play in the events array.

10. Another cool talent of swift arrays is that they know how many items they hold. You can get this number
using count, which is one of a swift array's several 'instance properties' 
(https://developer.apple.com/library/ios/documentation/Swift/Reference/Swift_Array_Structure/index.html#//apple_ref/doc/uid/TP40015178-CH1-DontLinkElementID_16). 
    - var numberOfItemsInCart = shoppingList.count will assign a value of 3 to the variable.

Using the count property, assign the length of the array to a variable called numberOfPlays

11. To sum things up, let's print out a message with some of our variables inside using string interpolation. 
To "print" doesn't mean we are going to print it out on paper, but simply send a string to the console at the 
bottom of the sandbox. If you can't see the console, you can make it appear by clicking the center button in 
the top right corner of the xcode playground. To print "first food: Bread", you would write the command 
print("first food: \(shoppingList[0])")

Print the following message to the console using the print command and string interpolation:
"This has been a great game! All 6 plays have been fantastic. My favorite play was Allen Craig singles
on a line drive to right fielder Carlos Beltran."


Bonus: 
- Take a look in the swift documetation at the rest of the instance properties and instance methods. 
Try and figure out what they do and try to use them with the events array.
- Could we use arrays to keep score instead of using our yankeesScore and redSoxScore variables? 

*/
