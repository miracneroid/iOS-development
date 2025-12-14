import UIKit

//Swift Optionals
//Represent missing values safely with optionals, and unwrap them with ??, if let, or guard let.
//
//What Are Optionals?
//An optional is a type that can hold either a value or nil (no value).
//
//Use ? to declare an optional, and nil-coalescing (??) or binding (if let) to safely read it.
//
//Syntax:
//
//var x: String?
//x ?? "default"
//if let v = x { ... }
//guard let v = x else { return }
//Example
var nickname: String? = nil
print(nickname ?? "(none)")

nickname = "Ace"
if let name = nickname {
  print(name)
}
//
//This example prints a default using ?? and unwraps an optional safely with if let.
//
//Tip: Use guard let inside functions to early-exit on missing values.

//Guard Let
//Use guard let for early exit when required values are missing.
//
//Example
func greet(_ input: String?) {
  guard let name = input else {
    print("Missing name")
    return
  }
  print("Hello, \(name)")
}

greet(nil)
greet("Swift")

