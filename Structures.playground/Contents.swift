// STRUCTURES

import UIKit

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

// Static Property (boilingPoint) which is a constant value for all Temperature instances
struct Temperature4 {
  static var boilingPoint = 100
}
let boilingPoint = Temperature4.boilingPoint


