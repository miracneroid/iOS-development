import UIKit


//Swift Switch
//Use switch to match a value against patterns.
//
//In Swift, a switch must list every choice, and it stops checking more choices after the first match.
//
//Basic Switch
//Match integer ranges and exact values.
//
//Add default to handle remaining cases.
//
//Example

let grade = 82
switch grade {
case 90...100:
  print("A")
case 80..<90:
  print("B")
case 70..<80:
  print("C")
default:
  print("Below C")
}

//String Switch
//Switch can match strings directly against literal cases.
//
//Example
let command = "start"
switch command {
case "start":
  print("Starting")
case "stop":
  print("Stopping")
default:
  print("Unknown")
}

