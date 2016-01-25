//: Playground - noun: a place where people can play

import UIKit

var username = "billy1234"

var tweets = ["Hey, this is my first tweet!", "Anyone wanna go eat some caramels later?", "I am loving the snow this weekend!", "Thinking about building a Swift app this week, anyone interested?", "Programming is awesome!!!!!!"]

tweets.append("Still Tweeting")

var followers = ["dhh", "UpperlineCode", "steveklabnik", "mom"]

print("User: \(username)\n-----------------\n\(tweets[4])\n\(tweets[3])\n\(tweets[2])\n\(tweets[1])\n\(tweets[0])")

print("user: \(username)  |  tweets: \(tweets.count)  |  followers: \(followers.count)")