//Classes

import UIKit

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
        self.name2 = name2
        self.agee = agee
    }
}

var jack = Person4(name2: "Jack", agee: 15)
var myFriend = jack
jack.agee += 2
print(jack.agee)
print(myFriend.agee)


