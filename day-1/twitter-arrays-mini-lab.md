1. Open a new XCode playground and name it TwitterArrays.

2. Pick a username for yourself and assign it to a variable called 'username'.

3. Create an array containing five tweet strings and store it in a variable called tweets.
  ```Swift
  var tweets = ["Hey, this is my first tweet!", "Anyone wanna go eat some caramels later?", "I am loving the snow this weekend!", "Thinking about building a Swift app this week, anyone interested?", "Programming is awesome!!!!!!"]
  ```

4. Make another array of your followers and store it in a variable called followers.

5. Use a built-in method for arrays to add another tweet to the tweets array.
 
6. Print out the user's timeline. Format it with the tweet in the last index position at the top of the timeline. Make it look something like this:

      ```
      User: billy1234
       -----------------
      Programming is awesome!!!!!!
      Thinking about building a Swift app this week, anyone interested?
      I am loving the snow this weekend!
      Anyone wanna go eat some caramels later?
      Hey, this is my first tweet!
      ```

7. Print the following statement without hardcoding the entire string. That is, use array methods and string interpolation to include the username, number of tweets, and number of followers.

  ```
  user: billy1234  |  tweets: 6  |  followers: 4
  ```
