//: ## Lesson 6 Exercises - Classes, Properties and Methods

import UIKit

//: __Problem 1__
//:
//: __1a.__
//: The compiler is complaining because the class Animal has no initializers. Write an init method for the Animal class and quiet this error. Include a mechanism to initialize the length of the Animal's tail using the Tail struct provided.
struct Tail {
    let lengthInCm: Double
}

class Animal {
    var species: String = ""
    let tail: Tail
    
    init(tailLenght: Double, species: String) {
        self.species = species
        self.tail = Tail(lengthInCm: tailLenght)
    }
}
//: __1b.__
//: Instantiate and initialize a few different Animals.
let animal1 = Animal(tailLenght: 25, species: "dog")
let animal2 = Animal(tailLenght: 15, species: "cat")
let animal3 = Animal(tailLenght: 5, species: "bird")
//: __Problem 2__
//:
//: Below are the beginnings of the Peach class.
class Peach {
    let variety: String
    
    // Softness is rated on a scale from 1 to 5, with 5 being the softest
    var softness: Int
    
    static var varieties = ["donut", "yellow", "white"]
    
    init(variety: String, softness: Int) {
        self.variety = variety
        self.softness = softness
    }
    
    func ripen() -> String {
        self.softness += 1
        return (self.softness > 4) ? "Ripe" : "Not ripe"
    }
}
//: __2a.__
//: Add a type property to the Peach class called "varieties". It should hold an array of different types of peaches.
//:
//: __2b.__
//: Add an instance method called ripen() that increases the value of the stored property, softness, and returns a string indicating whether the peach is ripe.
//:
//: __2c.__
//: Create an instance of the Peach class and call the method ripen().
let peach = Peach(variety: "donut", softness: 4)
peach.ripen()
peach.ripen()
//: __Problem 3__
//:
//: __3a.__
//:Add the computed property, "cuddlability", to the class, FluffyDog. Cuddlability should be computed based on the values of the stored properties, fluffiness and droolFactor.
var theFluffiestDog = UIImage(named:"fluffyDog")!
class FluffyDog {
    let name: String
    let fluffiness: Int
    let droolFactor: Int
    
    var cuddlability: Int {
        get {
            return self.fluffiness - self.droolFactor
        }
    }
    
    init(name: String, fluffiness: Int, droolFactor: Int) {
        self.name = name
        self.fluffiness = fluffiness
        self.droolFactor = droolFactor
    }
    
    func chase(_ wheeledVehicle: String)-> String {
        return "Where are you going, \(wheeledVehicle)? Wait for me! No, don't go! I will catch you!"
    }
}
//: __3b.__
//: Instantiate and initialize an instance of the class, FluffyDog. Use it to call the method, chase().
let fDog = FluffyDog(name: "Washigton", fluffiness: 3, droolFactor: 4)
fDog.cuddlability
fDog.chase("Car")
//: __Problem 4__
//:
//: __4a.__
//: Write an instance method, bark(), that returns a different string based on the value of the stored property, size.
enum Size: Int {
    case small
    case medium
    case large
}

class ChattyDog {
    let name: String
    let breed: String
    let size: Size
    
    init(name: String, breed: String, size: Size) {
        self.name = name
        self.breed = breed
        self.size = size
    }
    
    func bark() -> String {
        switch self.size {
        case .small:
            return "Small"
        case .medium:
            return "Medium"
        case .large:
            return "Large"
        }
    }
    
    class func speak(_ size: Size) -> String {
        switch size {
        case .small:
            return "Small"
        case .medium:
            return "Medium"
        case .large:
            return "Large"
        }
    }
}
//: __4b.__
//: Create an instance of ChattyDog and use it to call the method, bark().
let dog = ChattyDog(name: "Washigton", breed: "Cosa", size: .large)
dog.bark()
//: __4c.__
//: Rewrite the method, bark(), as a type method and rename it speak(). Call your type method to test it out.
ChattyDog.speak(.medium)
//: __Problem 5__
//:
//:__5a.__
//: Write an initialization method for the House class below.
enum Quality {
    case poor, fair, good, excellent
}

enum NaturalDisaster {
    case earthquake
    case wildfire
    case hurricane
}

class House {
    var numberOfBedrooms: Int = 0
    let location: Quality
    var worthyOfAnOffer: Bool {
        get {
            switch (numberOfBedrooms, location) {
            case (2, .excellent), (3, .good), ( 3, .excellent):
                return true
            default:
                return false
            }
        }
    }
 
    init(bedrooms: Int, location: Quality) {
        self.numberOfBedrooms = bedrooms
        self.location = location
    }
    
    func willStayStanding(_ naturalDisaster:NaturalDisaster)-> Bool {
        switch naturalDisaster {
        case .earthquake:
            return true
        case .wildfire:
            return true
        case .hurricane:
            return false
        }
    }
}

//: __5b.__
//: Create an instance of the House class and use it to call the method, willStayStanding().  This method takes in a parameter of type NaturalDisaster and return a Bool indicating whether the house will stay standing in a given natural disaster.
let house = House(bedrooms: 3, location: .good)
house.willStayStanding(.earthquake)
//: __5c.__
//: Add a computed property called, "worthyOfAnOffer". This property should be a Bool, whose return value is dependent upon some combination of the stored properties, numberOfBedrooms and location.






