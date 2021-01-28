import UIKit

//Closures

func sum(number: [Int]) -> Int {
    let total = number.reduce(0, +)
    return total
}

let example = sum(number: [1, 2, 3, 4])
print(example)

let sumClosure = { (numbers: [Int]) -> Int in
    let total = numbers.reduce(0, +)
  return total
}
 let sum1 = sumClosure([1, 2, 3, 4])
print(sum1)

// Closure with no parmeters or value
let example1Closuse  = { () -> Void in
    print("This Closure does not taken any parmeters and does not return a value ")
}

// Closure with a Parameter but no value
let example2Closure = { (string: String) -> Void in
    print(string)
}

// Closure with no Parameter but does have a value
let example3Closure = { () -> Int in
    let total = 3
    return total
}

// Closure with Parameter
let example4Closure = { (minValue: Int, maxValue: Int) -> Int in
    let total = Int.random(in: minValue...maxValue)
    return total
}
let sum3 = example4Closure(1, 10)
print(sum3)

// Closure as Arguments

struct Track {
    var trackNumber: Int
}
var tracks = [Track(trackNumber: 4), Track(trackNumber: 2), Track(trackNumber: 3), Track(trackNumber: 1)]

var sortTracks = tracks.sorted { (firstTrack, secondTrack) -> Bool in
    return firstTrack.trackNumber < secondTrack.trackNumber
}
tracks = sortTracks
print(tracks)

//simpify
let sortedTracks = tracks.sorted() { return $0.trackNumber < $1.trackNumber}
 // Can also remove the return key as swift already knows the return result
print(sortedTracks)

// Trailing Closurre
//When a closure is the last argument of a function, you can move the closing parentheses after the second-to-last argument and leave the curly braces at the end. When the function's only argument is a closure, the parentheses can be omitted entirely. This is called trailing closure syntax.

func performRequest(url: String, response: (_ code: Int) -> Void) {}

performRequest(url: "https://www.apple.com") { (data) in
    print(data)
}

// Collection Functions using Closures

let names = ["Johny", "Katie", "Aaron", "Rachel"]
var fullNames: [String] = []
for name in names {
    let fullName = name + " Smith"
    fullNames.append(fullName)
}

// Map
let fullnames = names.map { (name) -> String in
    return name + " Smith"
}
print(fullnames)

// Filter

let numbers = [4, 8, 16, 23, 42]
let numbersLessThan20 = numbers.filter { (number) -> Bool in
    return number < 20
}
print(numbersLessThan20)
