//Loops

import UIKit

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

