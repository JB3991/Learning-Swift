import UIKit

// Guard

var birthdayIsToday = true
var invitedGuests = ["Mum", "Dad", "Brother", "Sister"]
var cakeCandlesLit = true

// To many if else statements
/*func singHappyBirthday() {
    if birthdayIsToday {
        if !invitedGuests.isEmpty {
            if cakeCandlesLit {
                print("Happy Birthday to you!")
          } else {
                print("The cake's candles haven't been lit.")
          }
      } else {
            print("It's just a family party.")
    }
  } else {
        print("No one has a birthday today.")
  }
}
*/

// use guard to replace these
func singHappyBirthday() {
    guard birthdayIsToday else {
        // if false then put code here
        print("No one has a birthday today.")
        return
  }
    // if the above is true put code here
    guard !invitedGuests.isEmpty else {
        print("It's just a family party.")
        return
  }
    guard cakeCandlesLit else {
        print("The cake's candles haven't been lit.")
        return
    }
    print("Happy Birthday to you! and you blow out the candles")
}


singHappyBirthday()

func calculateArea(x: Double, y: Double) -> Double? {
    guard x > 0 && y > 0 else { return nil }
    
    return x*y
}
calculateArea(x: 8, y: 4)
calculateArea(x: -3, y: 5)


func add(x: Int?, y: Int?) -> Int? {
    guard let x = x, let y = y else {
            return nil
    }
    return x + y
}
add(x: 9, y: 2)
add(x: nil, y: 3)


struct User {
    var firstName: String
    var lastName: String
    var age: String
}

let firstNameTextField = UITextField()
let lastNameTextField = UITextField()
let ageTextField = UITextField()

firstNameTextField.text = "Jonathan"
lastNameTextField.text = "Sanders"
ageTextField.text = "28"

func createUser() -> User? {
    guard let firstName = firstNameTextField.text,
        let lastName = lastNameTextField.text,
        let age = ageTextField.text else {
            return nil
    }
    return User(firstName: firstName, lastName: lastName, age: age)
}

let user = createUser()
if let user = user {
    print("\(user.firstName) \(user.lastName) is \(user.age).")
}

struct Workout {
    var startTime: Double
    var endTime: Double

    init?(startTime: Double, endTime: Double) {
        guard endTime - startTime > 10 else { return nil }

        self.startTime = startTime
        self.endTime = endTime
    }
}


struct Food {
    var name: String
    var calories: Int
}

let foodTextField = UITextField()
let caloriesTextField = UITextField()

foodTextField.text = "Banana"
caloriesTextField.text = "23"

func logFood() -> Food? {
    guard let foodName = foodTextField.text,
        let caloriesText = caloriesTextField.text,
        let calories = Int(caloriesText) else {
            return nil
    }

    return Food(name: foodName, calories: calories)
}

if let food = logFood() {
    print("\(food.name) has \(food.calories) calories.")
}
