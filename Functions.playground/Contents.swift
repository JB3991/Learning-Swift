//FUNCTIONS

import UIKit

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
