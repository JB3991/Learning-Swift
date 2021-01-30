import UIKit

// Type Casting

// array which takes Any type
var items: [Any] = ["Test", 123, "Hello", 4156, true, false, "Jon", 66, 1, ]
print(items)

// loop through the itams and prints out a different string or Strings, Ints and Booleons 
for item in items {
    if let item = item as? Int {
        print("The Integer has a value of \(item)")
    } else if let item = item as? String {
        print("The string has a value of \(item)")
    } else if let item = item as? Bool {
        print("The Boolean has a value of \(item)")
    }
}

let randomDict: [String: Any] = ["FirstItem": 001, "SecondItem": "Hello", "ThirdItem": true, "ForthItem": 18, "FifthItem": 1.456]
print(randomDict)

var total: Double = 0
for (_, value) in randomDict {
    if let value = value as? Bool {
        if value {
            total += 2
        } else {
            total -= 3
        }
    } else if let value = value as? Double {
        total += value
    } else if let value = value as? Int {
        total += Double(value)
    } else if let _ = value as? String {
        total += 1
    }
}
print(total)

var total2: Double = 0
for (_, value) in randomDict {
    if value is Bool {
        continue
    } else if let value = value as? Double {
        total2 += value
    } else if let value = value as? Int {
        total2 += Double(value)
    } else if let value = value as? String,
              let numValue = Double(value) {
        total2 += numValue
    }
}
print(total2)

class Workout {
    let time: Double
    let distance: Double

    init(time: Double, distance: Double) {
        self.time = time
        self.distance = distance
    }
}

class Run: Workout {
    let cadence: Double

    init(cadence: Double, time: Double, distance: Double) {
        self.cadence = cadence
        super.init(time: time, distance: distance)
    }
}

class Swim: Workout {
    let stroke: String

    init(stroke: String, time: Double, distance: Double) {
        self.stroke = stroke
        super.init(time: time, distance: distance)
    }
}

var workouts: [Workout] = [
    Run(cadence: 80, time: 1200, distance: 4000),
    Swim(stroke: "Freestyle", time: 32.1, distance: 50),
    Swim(stroke: "Butterfly", time: 36.8, distance: 50),
    Swim(stroke: "Freestyle", time: 523.6, distance: 500),
    Run(cadence: 90, time: 358.9, distance: 1600)]

func describeRun(runningWorkOut: Run) {
    print("I Ran \(runningWorkOut.distance) meters in \(runningWorkOut.time) seconds, at a cadence of \(runningWorkOut.cadence) steps per mintues")
}

func describeSwim(swimmingWorkOut: Swim) {
    print("I Swam \(swimmingWorkOut.stroke) for \(swimmingWorkOut.distance) meters in \(swimmingWorkOut.time) seconds")
}

for workout in workouts {
    if let run = workout as? Run {
        describeRun(runningWorkOut: run)
    } else if let swim = workout as? Swim {
        describeSwim(swimmingWorkOut: swim)
    }
}
