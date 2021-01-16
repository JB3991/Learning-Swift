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

// Functions

func displyPi() {
    print("3.1415926535")
}

displyPi()

// Parameter

func triple(value: Int) {
    let result = value * 3
    print("if you multiply \(value) by 3, you'll get \(result)")
}

triple(value: 5)

// Multi arugments

func multiply (firstNumber: Int, secondNumber: Int) {
    let result = firstNumber * secondNumber
    print("The result is \(result)")
}
multiply(firstNumber: 8, secondNumber: 7)


func sayHello (firstname: String) {
    print("Hello \(firstname)")
}
sayHello(firstname: "Jonathan")

// Poorly writen code as "to" and "and" are not very clear
func sayHello1 (to: String, and: String) {
    print("Hello \(to) and \(and)")
}
sayHello1(to: "Roger", and: "Stef")

// Improvement
func sayHello2 (to Person: String, and anotherPerson: String) {
    print("Hello \(Person) and \(anotherPerson)")
}
sayHello2(to: "Riley", and: "Katie")


// use _ to replace external name (to & and)
func sayHello3 (_ person: String, _ anotherPerson: String) {
    print("Hello \(person) and \(anotherPerson)")
}
sayHello3("Josh", "Miley")


func disply(teamName: String, score:Int = 0) {
    print("\(teamName): \(score)")
}
disply(teamName: "Wombats", score: 100)
disply(teamName: "Wombats") // score would be 0

// Return a new value
func multiply1 (firstNumber: Int, secondNumber: Int) -> Int {
    let result = firstNumber * secondNumber
    return result
}
multiply1(firstNumber: 2, secondNumber: 10)

// to make the code easier to write, you can remove the constant and use the following
func multiply2 (firstNumber: Int, secondNumber: Int) -> Int {
    return firstNumber * secondNumber
}
multiply2(firstNumber: 3, secondNumber: 9)
//different ways to call the function and get the same outcome
let myResult2 = multiply2(firstNumber: 10, secondNumber: 5)
print("10 * 5 is \(myResult2)")
print("10 * 5 is \(multiply2(firstNumber: 10, secondNumber: 5))")


// Structures

struct Person {
    var name: String
}
let firstPerson = Person(name: "Jasmine")

struct Person1 {
    var name: String
    func sayHello() {
        print("Hello, there! My name is \(name)")
    }
}
let person = Person1(name: "Jamie")
person.sayHello()


// Instances

struct Car {
    var make: String
    var model: String
    var year: Int
    var topSpeed: Int

    func startEngine() {
    print("The \(year), \(make), \(model)'s engine has started")
    }
    
    func drive() {
        print("The \(year), \(make), \(model) is moving and traveling at \(topSpeed)MPH")
    }
    
    func parking() {
        print("The \(year), \(make), \(model) is parking ")
    }
}

let car = Car(make: "Honda", model: "Civic", year: 2012, topSpeed: 120)
let car2 = Car(make: "Ford", model: "Fusio", year: 2013, topSpeed: 125)

car.startEngine()
car.drive()


// Initializers

var strings = String.init() // Default init for a string is ""
var Intergars = Int.init() // Default init for a Int is 0
var bools = Bool.init() // default init for a bool is false

// you don't need to write init. Just use the brackets

var string = String() // Default init for a string is ""
var intergar = Int() // Default init for a Int is 0
var bool = Bool()

struct Temperature {
    var celsius: Double
    
    init(celsius: Double) {
        self.celsius = celsius
    }
    init(fahreheit: Double) {
        celsius = (fahreheit - 32) / 1.8
    }
}
let currentTemperature = Temperature(celsius: 18.5)
let boiling = Temperature(fahreheit: 212.0)
print(currentTemperature)
print(boiling)


struct Size {
    var width: Double
    var height: Double
    
    func area() -> Double {
        return width * height
    }
}
let someSize = Size(width: 10, height: 5.5)
let area = someSize.area()


struct Odometer {
    var count: Int = 0
    
    mutating func Increment() {
        count += 1
    }
    mutating  func increment(by amount: Int) {
        count += amount
    }
    mutating func reset() {
        count = 0
    }
}
var odometer = Odometer() // defualt to 0
odometer.Increment() // odometer is incremented to 1
odometer.increment(by: 15) // odometer is incremented to 16
odometer.reset() // odometer reset to 0

// This code is error prone as you would need to update all three properties everytime to temperture changed.
struct Temperature2 {
        var celsius: Double
        var fahrenheit: Double
        var kelvin: Double
    
        init(celsius: Double) {
        self.celsius = celsius
        fahrenheit = celsius * 1.8 + 32
        kelvin = celsius + 273.15
        }
    
        init(fahrenheit: Double) {
        self.fahrenheit = fahrenheit
        celsius = (fahrenheit - 32) / 1.8
        kelvin = celsius + 273.15
        }
    
        init(kelvin: Double) {
        self.kelvin = kelvin
        celsius = kelvin - 273.15
        fahrenheit = celsius * 1.8 + 32
        }
    }
let currentTemperature1 = Temperature2(celsius: 18.5)
let boiling1 = Temperature2(fahrenheit: 212.0)
let freezing = Temperature2(kelvin: 273.15)
   
// Replace the code above with the code below so you dont have to change the three properties every time
struct Temperature3 {
    var celsius: Double

    var fahrenheit: Double {
    return celsius * 1.8 + 32
    }

    var kelvin: Double {
    return celsius + 273.15
    }
}
let currentTemperature2 = Temperature3(celsius: 200.0)
print(currentTemperature2.fahrenheit)
print(currentTemperature2.kelvin)



struct StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            print("About to set totalSteps to \(newValue)")
        } didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
var stepCouter = StepCounter()
stepCouter.totalSteps = 40
stepCouter.totalSteps = 100

// Claases

class Person2 {
    let name: String

  init(name: String) {
    self.name = name
  }
  func sayHello() {
    print("Hello, there!")
  }
 }
let person2 = Person2(name: "Jasmine")
print(person2.name)
person2.sayHello()


// Base Class
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
            }
        }
let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")
        
/* class SomeSubclass: SomeSuperclass {
    // subclass definition goes here
} */

// override properies from a base class
class Bicycle: Vehicle {
    var hasBasket = false
}
 let bicycle = Bicycle()
bicycle.hasBasket = true

bicycle.currentSpeed = 15.0
print("Bicycle: \(bicycle.description)")

// the Tandam has inherited the Bicycle class as well
class Tandem: Bicycle {
    var currentNumberOfPassenagers = 0
}
let tandam = Tandem()
tandam.hasBasket = true
tandam.currentNumberOfPassenagers = 2
tandam.currentSpeed = 22.0
print("Tandem \(tandam.description)")

// override a inherited characteristic
tandam.makeNoise() // .makeNoise is a characteristic from the Vehicle Method

class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo!")
    }
}
let train = Train()
train.makeNoise()


class Car5: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}
let car5 = Car5()
car5.currentSpeed = 25.0
car5.gear = 3
print("Car: \(car5.description)")

class Person3 {
    let name: String
    init(name:String) {
        self.name = name
    }
}

class student: Person3 {
    var favSubject: String
    
    init (name: String, favSubject: String) {
        self.favSubject = favSubject
        super.init(name: name)
    }
}

// References

class Person4 {
    let name2: String
    var agee: Int
    
    init(name2: String, agee: Int) {
        self.name2 = name
        self.agee = agee
    }
}

var jack = Person4(name2: "Jack", agee: 15)
var myFriend = jack
jack.agee += 2
print(jack.agee)
print(myFriend.agee)


// Collections

// array
var names: [String] = ["Anne", "Gary", "Keith"]
var numbers = [1, 2, 3, 4, 5]
if numbers.contains(5) {
    print("There is a 5")
}

//empty array
var myArray: [Int] = []
// Special collection of type annotation
var myArray2: Array<Int> = []
// Initialized an empty array or Int objects
var myArray3 = [Int]()

var myArray4 = [Int](repeating: 0, count: 100)
let count4 = myArray4.count
if myArray4.isEmpty {}

// set Myname to index of 0 from Names array
let myName = names[0]
// Change the index value of 1 from Gary to Paul
names[1] = "Paul"

//add a new entry to the array
names.append("Amy")
names.append("Joe")
print(names)

// Insert a new entry at what index
names.insert("Bob", at: 0)
print(names)

// remove an index
names.remove(at: 0)
print(names)
names.removeLast()
print(names)
names.removeAll()

let array1 = [1, 2, 3]
let array2 = [4, 5, 6]
let newArray = array1 + array2
print(newArray)

let containerArray = [array1, array2] // two arrays in one array
let firstArray = containerArray[0] // return the first array from two
let firstElement = containerArray[0][0] // will return the first item in the first array

// Dictionaries

var scores = ["Richard": 500, "Luke": 400, "Katie": 800]
// empty Dictionary
var myDictionary = [String:Int]()
var myDictionary2 = Dictionary<String, Int>()
var myDictionary3: [String: Int] = [:]

scores["Oli"] = 399
print(scores)

// updating score
//let oldValue = scores.updateValue(100, forKey: "Richard")
//print(scores)

if let newValue = scores.updateValue(100, forKey: "Richard") {
    print("Richards old score was \(newValue)")
}

//Remove Richard
scores["Richard"] = nil

if let oldValues = scores.removeValue(forKey: "Luke") {
    print("Luke's score was \(oldValues) before he stopped playing")
}

print(scores)

scores = ["Richard": 500, "Luke": 400, "Katie": 800]
print(scores)
scores["Oli"] = 399

let players = Array(scores.keys)
let points = Array(scores.values)

if let myScore = scores["Luke"] {
    print(myScore)
}

// Loops

for index in 1...5 {
    print("This is number \(index)")
}

for _ in 1...3 {
    print("Hello")
}

let names3 = ["Joseph", "Cathy", "Winston"]
for name in names3 {
    print("Hello \(name)")
}

for letter in "ABCD" {
    print("The letter is \(letter)")
}

for (index, letter) in "ABCD".enumerated() {
    print("\(index): \(letter)")
}


let vehicles = ["unicycle" : 1, "bicycle" : 2, "tricycle" : 3, "quad bike" : 4]
for (vehicleName, wheelCount) in vehicles {
  print("A \(vehicleName) has \(wheelCount) wheels")
}

// this loop will run forever as nothing is changing the numberOflives so it will always be true
/*var numberOfLives = 3
while numberOfLives > 0 {
  print("I still have \(numberOfLives) lives.")
}*/

var numberOfLives = 3
var stillAlive = true
while stillAlive {
  numberOfLives -= 1
  if numberOfLives == 0 {
    stillAlive = false
  }
}

for counter in -3...3 {
  print(counter)
  if counter == 0 {
    break
  }
}

var people = ["Jon": 27, "Katie": 27, "Megan": 10]
for person in people {
  if person.value < 18 {
    continue
  }
    print("\(person)")
}
