import UIKit

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


