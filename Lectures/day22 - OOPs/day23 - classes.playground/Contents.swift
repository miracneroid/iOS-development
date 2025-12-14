import UIKit

//Swift Classes/Objects
//Define reference types with stored properties and methods.
//
//Instances share identity and are passed by reference.
//
//Define a Class
//Create a class with stored properties and methods, then instantiate and call methods on the instance.
//
//Example
class Counter {
  var value = 0
  func inc() { value += 1 }
}

let c = Counter(); c.inc()

//BankAccount
//Use an initializer to set up state and instance methods to mutate it.
//
//Example
class BankAccount {
  var balance: Int
  init(balance: Int) { self.balance = balance }
  func deposit(_ amount: Int) { balance += amount }
}

let acc = BankAccount(balance: 100)
acc.deposit(25)
print(acc.balance) // 125

//Swift Class Properties
//Store state in class properties. Use static for type properties shared across all instances.
//
//Stored and Computed
//Use var for stored properties and let for constants.
//
//Example
class User {
  var name: String // stored
  var greeting: String { "Hello, \(name)" } // computed
  static let appName: String  = "MyApp" // type property
  init(name: String) { self.name = name }
}

//Property Observers
//Use willSet and didSet to react to changes on stored properties.
//
//Example
class Player {
  var score: Int = 0 {
    willSet { print("About to set to \(newValue)") }
    didSet { print("Changed from \(oldValue) to \(score)") }
  }
}

let p = Player()
p.score = 10

//Swift Class Methods
//Use static or class to define type methods that belong to the type itself rather than an instance.
//
//Type Methods
//Use class for overridable type methods; static methods cannot be overridden.
//
//Example
class Math {
  class func square(_ n: Int) -> Int { n * n } // overridable in subclasses
  static func cube(_ n: Int) -> Int { n * n * n } // not overridable
}

print(Math.square(4))
print(Math.cube(3))

//Override class func
//Use class for overridable type methods; static methods cannot be overridden.
//
//Example
class Base {
  class func greet() { print("Base") }
  static func ping() { print("Base ping") }
}

class Sub: Base {
  override class func greet() { print("Sub") }
  // static func cannot be overridden
}

Base.greet()
Sub.greet()
Base.ping()

//Swift self Keyword
//Use self to reference the current instance, disambiguate names, and in type methods to refer to the type.
//
//Disambiguation
//Disambiguate means to make something clear or distinct.
//
//In this instance it is used to make parameter and property names distinct from each other.
//
//Use self to disambiguate parameter and property names.
//
//Example
struct Users {
  var name: String
  init(name: String) { self.name = name } // disambiguate
}

class Counters {
  var value = 0
  func inc() { self.value += 1 } // optional here
  class func resetAll() { print(Self.self) } // refer to the type
}

//Mutating and self
//Use self to disambiguate parameter and property names in mutating methods.
//
//Example
struct Counterd {
  var value = 0
  mutating func add(_ value: Int) {
    self.value += value // disambiguate
  }
}

var co = Counterd()
co.add(3)
print(c.value)
