//: # Types

import UIKit
import Foundation

//: ### Example 1: Bool, Int, Float, Double
class LightSwitch {
    
    var on: Bool = true;
    var dimmerInt: Int = 7;
    var dimmerFloat: Float = 3.14;
    var dimmerDouble: Double = 3.14159265369;
}

var livingRoomSwitch = LightSwitch();
livingRoomSwitch.on;
livingRoomSwitch.dimmerInt;
livingRoomSwitch.dimmerFloat;
livingRoomSwitch.dimmerDouble;

var onInferred = true;
var onTyped: Bool = true;
type(of: onInferred); // Bool.type.
type(of: onTyped); // Bool.type.

var dimmerTyped: Float = 13.75;
var dimmerInferred = 13.75;
type(of: dimmerTyped); // Float.type.
type(of: dimmerInferred); // Double.type.

//: ### Example 2: Strings and Characters
var dollarSign: Character = "$"
var myFirstSwiftString: String = "mo' money"
var mySecondSwiftString: String = "mo' problems"
var concatenatedString:String = myFirstSwiftString + ", " + mySecondSwiftString
type(of: concatenatedString);
//: ### Stay tuned for more on Optionals and Tuples in the upcoming lessons!

//: # Operators

//: ### Example 1 - Comparison operators
let ticketPrice = 7.5
let allowance = 10.0
var iceCreamPrice = 3.0

var pic = UIImage(named:"Chloe.png")!

if allowance >= ticketPrice + iceCreamPrice {
    print("Let's go to the movies!")
} else {
    print("Let's watch a movie at home and eat ice cream")
}

let accountMoney = 15.0
let peopleCount = 4
let ticketCount = 4

if accountMoney >= ticketPrice {
    print("Let’s go to the show.")
}

if accountMoney <= iceCreamPrice {
    print("I need more money for an ice cream.")
}

if peopleCount == ticketCount {
    print("We all are going to the show!")
}
//: ### Example 2 Logical operators
var hungry = true
var vegetarian = false

if hungry {
    print("Let's eat!")
} else {
    print("Let's wait.")
}

if hungry && !vegetarian {
    print("Let's eat steak!")
} else if hungry && vegetarian {
    print("How about pumpkin curry?")
} else {
    print("nevermind")
}

var thereIsPie = true
if hungry || thereIsPie {
    print("Let's eat!")
} else {
    print("Let's wait.")
}

//: ### Example 3 - Ternary conditional
//: A theoretical example from Apple's Swift Programming Language. These two statements are equivalent:
/*:
if question {
answer1
} else {
answer2
}
*/
/*:
question ? answer1 : answer2
*/
// This statement ...
//if hungry {
//    print("Let's eat!")
//} else {
//    print("Let's wait.")
//}

// Could be rewritten like so ...
hungry ? print("Let's eat!") : print("Let's wait.")

// This statement...
//if hungry || thereIsPie {
//    print("Let's eat!")
//} else {
//    print("Let's wait.")
//}

// Could be rewritten like so ...
hungry || thereIsPie ? print("Let's eat!") : print("Let's wait.")


// Ternary statements can also be used as expressions.
let sandwichPrice = 5.0
var tax = true
var lunchPrice = sandwichPrice + (tax ? 0.50 : 0)

//: ### Extra Example - Comparison operators
let birthYear = 1984
if birthYear <= 1989 {
    print("I will understand Gabrielle's 90s references.")
}
else {
    print("I think that Salt n' Peppa are essential seasonings.")
}


