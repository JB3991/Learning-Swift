import UIKit

var str = "Hello, playground"

print (str)

let name1 = "John"
print(name1)
// following line doesn't work because name is a constant.
//name1 = "James"

var name2 = "John"
name2 = "James"
print(name2)

var age = 27
print (age)

age = 30
print(age)

//Definition
struct Person {
    //Properties
    let firstname: String
    let lastname: String
    //Function
    func sayHello(){
        print("Hello there! My name is \(firstname) \(lastname).")
        }
}
// Creating a person from my person definition
let person1 = Person(firstname: "John", lastname: "B")
let person2 = Person(firstname: "Katie", lastname: "C")

//Calling my constant (person1 or 2) and calling the sayHello function
person1.sayHello()
person2.sayHello()


var int = 4 // Int represents whole numbers
var double = 12.25 //Doube represents decimal points
var bool = true //Bool represents true or false
var string = "This is a string " // String represents a line of characters in ""

let playerName = "Thomas" // String
var playerScore = 1000 // Int
var gameOver = false

// THis will return an error as they both have different types.
//playerName = playerScore

var score = 173.38
var level = 4

//This will return an error as well. One is an Int and the other is an double
//score = level

// here we have specified what type or variable is.
var cityName: String = "London"
var pi: Double = 3.1415927

// This is an empty Constant and we've assigned the value later on.
let firstName: String
firstName = "Scott"

// can also do this with an Definition
struct car {
    var make:String
    var model:String
    var year:Int
}


var myScore = 100 / 3
print(myScore)

var opponentScore = 20 * 3

var totalScore = myScore + opponentScore
print(totalScore)

let x = 12
let y = 3
let z = x + y

myScore = 10
myScore = myScore + 3

myScore += 3 // adds 3 to myScore
myScore -= 5 // minus 5 to myScore
myScore *= 2 // Multiples myScore by 2
myScore /= 1 // Divides myScore by 1

// If Statements

// Here we are saying if the temperature is greater than > 100 print "The Water is boiling"
let temperature = 100
if temperature >= 100 {
    print("The Water is boiling")
} else {
    // by adding else we can specify what to do if the temperature is below 100
    print("The Water is not boiling")
}

var finishPosition = 2

// Using an if statement but by using else if we can give more then 2 outcomes
if finishPosition == 1 {
  print("Congratulations, you won the gold medal!")
} else if finishPosition == 2 {
  print("You came in second place, you won a silver medal!")
} else {
  print("You did not win a gold or silver medal.")
}

// we can use Int to return a Bool
let number = 1000
let isSmallNumber = number < 10

let speedLimit = 70
let currentSpeed = 72
let isSpeeding = currentSpeed > speedLimit

var isSnowing = false
if !isSnowing {
    print("It is not snowing")
}

let temp = 72
// add statement
if temp >= 65 && temp <= 75 {
  print("The temperature is just right.")
} else if temp < 65 {
  print("It is too cold.")
} else {
  print("It is too hot.")
}

// or if statement
var isPluggedIn = false
var hasBatteryPower = true

if isPluggedIn || hasBatteryPower {
  print("You can use your laptop.")
} else {
  print("😱")
}

//Switch Statement
let numberOfWheels = 2
switch numberOfWheels {
case 1:
    print("Unicycle")
case 2:
    print("Bicycle")
case 3:
    print("Tricycle")
case 4:
    print("Quadcycle")
default:
    print("That's a lot of wheels!")
}

// use a Switch statement but with multiple conditions for one case
let character = "t"

switch character {
case "a", "e", "i", "o", "u" :
    print("This character is a vowel.")
default:
    print("This character is a consonant.")
}

// Can also use a range conition for each case
let distance = 450
switch distance {
case 0...9:
    print("Your destination is close.")
case 10...99:
    print("Your destination is a medium distance from here.")
case 100...999:
    print("Your destination is far from here.")
default:
    print("Are you sure you want to travel this far?")
}

// Ternary operator
var largest: Int
let a = 15
let b = 4

largest = a > b ? a : b

