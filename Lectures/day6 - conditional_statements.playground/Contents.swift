import UIKit

//Swift If...Else

// Conditional Statments or Simply if Else statment gives us power to make choices in coding, sometime it happens we crave for something spicy or maggie so we tell our friend to bring maggie, he goes and be like not avalaible so we tell him that if not maggie brind chips and he was like not avaliable, so we telll bring something to eat and if found anything atleast bring cold drinks. IF we have to write this is codes than how we gonna write it? let's see

var craving = true
var shopping : String
var maggie = false
var chips = true
var rolls = false


if craving && maggie { // so here we basically said if craving is on and maggie is avaliable bring maggie
    shopping = "maggie"
}
else if craving && chips{
    // and here we said if maggie is not avalaible and craving is still on bring chips
    shopping = "chips"
}
else if craving && rolls{
    // if both chips and maggie is not avalaible and craving is still on bring rolls
    shopping = "rolls"
}
else{
    // and if nothing is avaliable and by the time listening so many no's idk if craving is on or off now of frustration, and since you are already out so bring something bring cold drinks at least for god shake.
    shopping = "cold drink"
}

//Let's go for some techincal explanations ->

//Control the flow of your program with if, else if, and else.
//
//Combine conditions with logical operators.
//
//Basic If...Else
//Use if to run code when a condition is true.
//
//Add else for the false case, and else if for multiple branches.
//
//Example 1->
var action : String
var person = "Hater"

if person == "Hater" {
    action = "Hate"
}
else if person == "player"{
    action = "play"
}
else {
    action = "Fight"
}
//Example 2->
let score = 82
if score >= 90 {
  print("A")
} else if score >= 80 {
  print("B")
} else {
  print("C or lower")
}

//Tip: Swift conditions must be Bool.

//There is no implicit conversion from integers to booleans.

//Even or Odd
//Use else to handle the alternate outcome.
//
//Example
let n = 7
if n % 2 == 0 {
  print("Even")
} else {
  print("Odd")
}

//Swift if
//Execute code conditionally when an expression evaluates to true.
//
//Basic if
//Run code only when a condition evaluates to true.
//
//Example
let temp = 25
if temp > 20 {
  print("Warm")
}

//Threshold Check
//Trigger an action only when a value exceeds a threshold.
//
//Example
let speed = 55
if speed > 50 {
  print("Slow down")
}

//Swift else
//Use else to handle the false branch of a condition.
//
//Handle the false branch with else
//Use else to run an alternate block when the condition is false.
//
//Example
let hasAccess = false
if hasAccess {
  print("Welcome")
} else {
  print("Denied")
}

//Age Gate
//Use else to handle when a user does not meet a requirement.
//
//Example
let age = 16
if age >= 18 {
  print("Access granted")
} else {
  print("Access denied")
}

//Swift else if
//Chain multiple conditions with else if for more than two branches.
//
//Branch with else if conditions
//Use else if for additional conditions when the first if is false.
//
//Example
if score >= 90 {
  print("A")
} else if score >= 80 {
  print("B")
} else if score >= 70 {
  print("C")
} else {
  print("Below C")
}

//Temperature Levels
//Use multiple else if branches to categorize values.
//
//Example
let t = 0
if t <= 0 {
  print("Freezing")
} else if t < 10 {
  print("Cold")
} else if t < 20 {
  print("Cool")
} else {
  print("Warm")
}

//Swift Short Hand If...Else
//Use the ternary operator condition ? a : b for concise conditional expressions.
//
//Basic Ternary Operator
//Use the ternary operator to choose between two values in a single expression.
//
//Example
let status = (age >= 18) ? "Adult" : "Minor"
print(status)

//Choose the Minimum
//Use a ternary expression to select the smaller of two values.
//
//Example
let a = 5, b = 9
let min = (a < b) ? a : b
print(min)

//Swift Nested If
//Nest if statements to check multiple levels of conditions.
//
//Use nested conditions for multi-step checks
//Use nested conditions to handle layered checks, such as authentication then role.
//
//Example
let isLoggedIn = true
let isAdmin = false
if isLoggedIn {
    if isAdmin {
      print("Admin panel")
    } else {
      print("Limited access")
    }
  }

//Validate and Branch
//Validate inputs first, then use a nested if to branch inside the valid case.
//
//Example
if score >= 0 && score <= 100 {
  if score >= 90 {
    print("A")
  } else if score >= 80 {
    print("B")
  } else if score >= 70 {
    print("C")
  } else {
    print("Below C")
  }
} else {
  print("Invalid score")
}

//Swift If with Logical Operators
//Combine conditions with &&, ||, and negate with !.
//
//Combine conditions with logical operators
//Use AND, OR, and NOT to build complex conditions that control code paths.
//
//Example
let isMember = true
let hasCoupon = false
if isMember || hasCoupon {
  print("Discount applied")
}

//AND and NOT
//Combine conditions with && and negate with !.
//
//Example
let expired = false
if isMember && !expired {
  print("Active member")
}

//Swift If (Real-Life Examples)
//Apply conditional logic to real situations like validation, feature flags, or permissions.
//
//Validate input with conditions
//Use conditions to validate input and guard against empty or invalid values.
//
//Example
let input = "hello"
if !input.isEmpty {
  print("Input received: \(input)")
}

//Feature Flag
//Gate a feature behind a flag and a user group.
//
//Example
let enabled = true
let userGroup = "beta"
if enabled && userGroup == "beta" {
  print("Show feature")
}

var stayOutTooLate = true
var nothingInBrain = true

if stayOutTooLate && nothingInBrain {
    action = "double punishment"
}
else if stayOutTooLate || nothingInBrain {
    action = "punishment"
}
else if !stayOutTooLate || !nothingInBrain{
    action = "single punishment"
}
else if !stayOutTooLate && !nothingInBrain{
    action = "Reward"
}
else{
    action = "No punishment"
}
