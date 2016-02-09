//: Playground - noun: a place where people can play

import UIKit

//Level 1
//When users sign up for a website, it's common to have to register with an email address. You've probably noticed that a typo on one of these forms might result in an error message saying "Invalid Email Address".
//Create a function called emailVerification that accepts a string parameter called email. The function should return true if the string ends with ".com". Otherwise, return false.
//emailVerification("sara@gmail.com") --> true
//emailVerification("sara@gmail") --> false













//--------------------------------------------------------------------------------------------------
//Level 2
//Add another level of verification to your function so that it returns false if it contains any of the following symbols: '?', "!", "#", or "&".
//emailVerification("sara111@gmail.com") --> true
//emailVerification("sara!!!@gmail") --> false















//--------------------------------------------------------------------------------------------------
//Level 3
//Make sure that there is a substring of length 1 or greater before "@something.com". Return true if there is, and false if there is not.
//emailVerification("sara412@gmail.com") --> true
//emailVerification("@gmail") --> false














//--------------------------------------------------------------------------------------------------
//Level 4
//Verify that the email's domain is either @gmail.com, @yahoo.com, or @aol.com.
//emailVerification("sara412@gmail.com") --> true
//emailVerification("sara412@kiwi.edu") --> false












