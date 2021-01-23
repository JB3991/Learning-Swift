// Optionals

import UIKit

struct Book {
  var name: String
  var publicationYear: Int?
}

let firstHarryPotter = Book(name: "Harry Potter and the Sorcerer's Stone", publicationYear: 1997)
let secondHarryPotter = Book(name: "Harry Potter and the Chamber of Secrets", publicationYear: 1998)
let thirdHarryPotter = Book(name: "Harry Potter and the Prisoner of Azkaban", publicationYear: 1999)

let books = [firstHarryPotter, secondHarryPotter, thirdHarryPotter]

// the Publication Year can't be 0 as this would mean the book is 2000 years old.
//let unannouncedBook = Book(name: "Rebels and Lions", publicationYear: 0)


// As this book hasn't been released yet we need to makes the Pulblication Year an Optional.
// so if we chase var publicationYear for Int to Int? we can have an Int or a nil result

let unannouncedBook = Book(name: "Rebels and Lions", publicationYear: nil)

var book = Book(name: "My Life", publicationYear: 1993)
if let unwrappedPublicationYear = book.publicationYear {
    print("This book was Published in \(unwrappedPublicationYear)")
} else {
    print("This book does not have a pulication Year")
}

var responseCode = 404 // ResponseCode is an Int
//responseCode = nil will return an Error because responceCode need an Int result

var ServerResponseCode: Int? = 404 // Now we can have an Int result or a nil result because ServerResponseCode is Optional
ServerResponseCode = nil

// Failable Initializers
//  Here every Toddler has to be given a nmae and age in Months However you might not want to create an instance of a toddler if the child is younger than 12 months or older than 36 months. To provide this flexibility, you can use init? to define a failable initializer. The question mark (?) tells Swift that this initializer may return nil and that it should return an instance of type Toddler?”

struct Toddler {
    var name: String
    var monthsOld: Int

    init?(name: String, monthsOld: Int) {
    if monthsOld < 12 || monthsOld > 36 {
      return nil
    } else {
      self.name = name
      self.monthsOld = monthsOld
    }
  }
}

let possibleToddler = Toddler(name: "Joanna", monthsOld: 20)

if let toddler = possibleToddler {
  print("\(toddler.name) is \(toddler.monthsOld) months old")
} else {
  print("The age you specified for the toddler is not between 1 and 3 yrs of age")
}

// Optional Chaining
// Nested Optionals

// Every person has an age however they might have an residenceor it might be nil. if they do have a Residence then they might have an address or it might be nil
struct Person {
  var age: Int
  var residence: Residence?
}

struct Residence {
  var address: Address?
}

struct Address {
  var buildingName: String
  var streetName: String
  var apartmentNumber: String?
}

var person = Person(age: 27, residence: Residence.init(address: Address(buildingName: "Liberty House" , streetName: "Bessemer Road", apartmentNumber: "34")))
if let theResidence = person.residence {
    if let theAddress = theResidence.address {
        if let theAppartmentNumber = theAddress.apartmentNumber{
            print("They live in apartment Number \(theAppartmentNumber).")
        }
    }
}
// you can simplify the code above with

if let theApartmentNumber = person.residence?.address?.apartmentNumber {
    print("They live in apartment Number \(theApartmentNumber).")
} else {
    print("They doe not live in an apartment")
}
