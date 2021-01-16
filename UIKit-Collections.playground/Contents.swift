//Collections

import UIKit

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
