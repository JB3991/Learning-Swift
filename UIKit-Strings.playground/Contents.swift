import UIKit

// Strings
var str = "Hello, playground"

let joke = """
Q: Why did the chicken cross the road?
A: To get to the other side
"""

let greeting = "It is trsditional in programing to print \"Hello, World!\""

var myString = ""

if myString.isEmpty {
    print("The string is empty")
}

let string1 = "Hello"
let string2 = ", World"
let completeString = string1 + string2

var myString2 = "Hello"
myString2 = myString2 + ", World"

let name = "Steve"
let age = 33
print("\(name) is \(age) years old")

let a = 5
let b = 13
print("if a is \(5) and b is \(b), then a + b equals \(a+b)")

let month = "January"
let otherMonth = "January"
let lowercaseMonth = "january"

if month == otherMonth {
    print("They are the same")
}
if month != lowercaseMonth {
    print("They are not the same")
}

let name2 = "Johnny Appleseed"
if name2.lowercased() == "joHnnY aPPleseeD".lowercased() {
    print("The two names are equal")
}

let greeting2 = "Hello, World"
print(greeting2.hasPrefix("Hello"))
print(greeting2.hasSuffix("World"))
print(greeting2.hasSuffix("world"))
// case sesitive

// Check to see if one string is somewhere within another string
let greeting3 = "Hi Jon, my name is Alex"
if greeting3.contains("my name is") {
    print("Making an introduction")
}


let name3 = "Ryan Mears"
let count = name3.count

let newPassword = "1234"
if newPassword.count < 8 {
    print("This password is to short. Passwords need at least 8 characters")
}

let randomCharacter:Character = "e"
switch randomCharacter {
case "a", "e", "i", "o", "u":
    print("\(randomCharacter) is a vowel")
default:
    print("\(randomCharacter) is not a vowel")
}
