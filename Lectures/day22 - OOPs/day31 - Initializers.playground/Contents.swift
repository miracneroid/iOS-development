import UIKit

//Swift Initializers
//Create and customize object setup with designated, convenience, and memberwise initializers.
//
//Memberwise and Custom Init
//Structs get a memberwise initializer by default.
//
//You can also define custom initializers.
//
//Syntax: init(params) { self.prop = ... }
//
//Example
struct User { var name: String; var age: Int }
let a = User(name: "Morgan", age: 30) // memberwise

struct Point {
  var x: Int, y: Int
  init(_ x: Int, _ y: Int) { self.x = x; self.y = y }
}
let p = Point(1, 2)

//This example shows a memberwise initializer for a simple struct and a custom initializer with positional parameters.
//
//Class Designated vs Convenience
//Classes use designated initializers to fully initialize stored properties and convenience initializers to provide shortcuts.
//
//Syntax:
//
//init(...) (designated)
//convenience init(...) (must call self.init)
//Example
class Person {
  let name: String
  let age: Int
  init(name: String, age: Int) {
    self.name = name; self.age = age
  }
  convenience init(name: String) { self.init(name: name, age: 0) }
}

let p1 = Person(name: "Robin", age: 30)
let p2 = Person(name: "Elisabeth")

//The convenience initializer provides a default for age by delegating to the designated initializer.
//
//
//Failable and Throwing Init
//Use failable initializers to return nil on invalid input; use throwing initializers to signal errors.
//
//Syntax:
//
//init?
//init throws
//Example
struct Email {
  let value: String
  init?(_ s: String) { if s.contains("@") { value = s } else { return nil } }
}

enum InitError: Error { case invalid }
struct Port {
  let number: Int
  init(_ n: Int) throws { guard (1...65535).contains(n) else { throw InitError.invalid }; number = n }
}

//This example shows a failable initializer for an email and a throwing initializer for a port range check.
//
//Tip: Prefer memberwise initializers for simple value types; add validation in custom initializers.
