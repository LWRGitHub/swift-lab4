//: [Previous](@previous)
import Foundation
/*:
## Users and Distance

For most apps you'll need to have a data structure to hold information about a user. Create a `User` struct that has properties for basic information about a user. At a minimum, it should have properties to represent a user's name, age, height, weight, and activity level. You could do this by having `name` be a `String`, `age` be an `Int`, `height` and `weight` be of type `Double`, and `activityLevel` be an `Int` that will represent a scoring 1-10 of how active they are. Implement this now.
*/
struct User{
    let name: String
    let age: Int
    let height: Double
    let weight: Double
    let activityLevel: Int
}

/*:
Create a variable instance of `User` and call it your name. Use the memberwise initializer to pass in information about yourself. Then print out a description of your `User` instance using the instance's properties.
*/
let logan = User(name: "Logan", age: 28, height: 5.9, weight: 29, activityLevel: 4)

/*:
Distance can be represented using a variety of units of measurement. Create a `Distance` struct that will represent distance in various units of measurement. At a minimum, it should have a `meters` property and a `feet` property. Create a custom initializer corresponding to each property (i.e. if you only have the two properties for meters and feet you will then have two initializers) that will take in a distance in one unit of measurement and assign the correct value to both units of measurements. Hint: *1 meter = 3.28084 feet*.

- Example: If you use the initializer for meters and pass in a distance of 1600, the initializer should set `meters` to 1600 and `feet` to 5249.344.
*/
//struct Distance{
//    var meters: Double
//    var feet: Double
//
//    init(meters: Double){
//        self.meters = meters
//        self.feet = self.meters * 3.28084
//    }
//    init(feet: Double){
//        self.feet = feet
//        self.meters = self.feet / 3.28084
//    }
//}
//
//let distance1 = Distance(meters: 2574.7)
//print(distance1)
/*:
Now create an instance of `Distance` called `mile`. Use the initializer for meters to set the distance to 1600. Print out the property for feet and verify that it is equal to 5249.344.
*/
//struct Distance{
//    var meters: Double
//    var feet: Double
//    var miles: Double
//
//    init(meters: Double){
//        self.meters = meters
//        self.feet = self.meters * 3.28084
//        self.miles = self.feet / 5280.0
//    }
//    init(feet: Double){
//        self.feet = feet
//        self.meters = self.feet / 3.28084
//        self.miles = self.feet / 5280.0
//    }
//    init(miles: Double){
//        self.miles = miles
//        self.feet = self.miles * 5280.0
//        self.meters = self.feet / 3.28084
//    }
//}
//
//let distance1 = Distance(meters: 2574.7)
//print(distance1)

/*:
Now create another instance of `Distance` and give it some other distance. Ensure that both properties are set correctly.
*/
struct Distance{
    var meters: Double
    var feet: Double
    var miles: Double
    var inches: Double
    
    init(meters: Double){
        self.meters = meters
        self.feet = self.meters * 3.28084
        self.miles = self.feet / 5280.0
        self.inches = self.feet * 12
    }
    init(feet: Double){
        self.feet = feet
        self.meters = self.feet / 3.28084
        self.miles = self.feet / 5280.0
        self.inches = self.feet * 12
    }
    init(miles: Double){
        self.miles = miles
        self.feet = self.miles * 5280.0
        self.meters = self.feet / 3.28084
        self.inches = self.feet * 12
    }
    init(inches: Double){
        self.inches = inches
        self.feet = self.inches / 12
        self.miles = self.feet / 5280.0
        self.meters = self.feet / 3.28084
    }
}

let distance1 = Distance(meters: 1600)
let distance2 = Distance(feet: 5249.344)
let distance3 = Distance(miles: 0.9941939393939394)
let distance4 = Distance(inches: 62992.128)
print(distance1)
print(distance2)
print(distance3)
print(distance4)

/*:
## Mile Times and Congratulations

The `RunningWorkout` struct below holds information about your users' running workouts. However, you decide to add information about average mile time. Add a computed property called `averageMileTime` that uses `distance` and `time` to compute the user's average mile time. Assume that `distance` is in meters and 1600 meters is a mile.

Create an instance of `RunningWorkout` and print the `averageMileTime` property. Check that it works properly.
*/
struct RunningWorkout {
   var distance: Double
   var time: Double
   var elevation: Double
    
    init(distance: Double, time: Double, elevation: Double){
        self.distance = distance
        self.time = time
        self.elevation = elevation
    }

    func averageMileTime()-> Double{
        var answer: Double = 0
        answer = self.distance / 1600
        answer = self.time / answer
        return answer
    }
}
var logansRun = RunningWorkout(distance: 54385976, time: 76553, elevation: 5)
print(logansRun.averageMileTime())
/*:
In other app exercises, you've provided encouraging messages to the user based on how many steps they've completed. A great place to check whether or not you should display something to the user is in a property observer.

In the `Steps` struct below, add a `willSet` to the `steps` property that will check if the new value is equal to `goal`, and if it is, prints a congratulatory message. Create an instance of `Steps` where `steps` is 9999 and `goal` is 10000, then call `takeStep()` and see if your message is printed to the console.
*/
struct Steps {
    var goal: Int
    var steps: Int{
        willSet{
            if self.goal <= self.steps{
                print("congratulations you have reached your GOAL!")
            }
        }
    }
   
    mutating func takeStep() {
       steps += 1
    }
}

var stepCunt1 = Steps(goal: 9999, steps: 10000)
stepCunt1.takeStep()
/*:You can refer to this resource to read about Property Observers:
 https://www.hackingwithswift.com/read/0/17/properties
 */
//: [Next](@next)
