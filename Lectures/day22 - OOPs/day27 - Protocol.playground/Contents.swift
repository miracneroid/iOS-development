import UIKit

//Swift Protocols
//Define behavior contracts that types adopt, and extend them to add default implementations.
//
//Defining and Conforming to Protocols
//A protocol defines a blueprint of methods and properties.
//
//Types adopt a protocol by providing implementations.
//
//Syntax:
//
//protocol P { var x: Int { get set }; func f() }
//struct S: P { ... }
//Example
protocol Greetable { func greet() -> String }

struct Person: Greetable {
  var name: String
  func greet() -> String { "Hello, \(name)" }
}

let p = Person(name: "Swift")
print(p.greet())

//This example demonstrates how a protocol is defined and adopted by a type, and how the type provides an implementation for the protocol's method.
//
//Tip: Use protocol extensions to provide default method implementations.
//
//Protocol Extensions (Default Implementations)
//Provide default behavior for conforming types by adding implementations in a protocol extension.
//
//Example
protocol Describable { func describe() -> String }

extension Describable {
  func describe() -> String { "(no description)" }
}

struct User: Describable { let name: String }

struct Car: Describable {
  let model: String
  func describe() -> String { "Car: \(model)" }
}

let u = User(name: "Morgan")
let c = Car(model: "SwiftMobile")
print(u.describe())
print(c.describe())

//This example gives User a default describe() and overrides it in Car.
//
//Protocols with Associated Types
//Use associatedtype to make a protocol generic over a placeholder type.
//
//Conformers bind the placeholder to a concrete type.
//
//Example
protocol Container {
  associatedtype Element
  mutating func append(_ item: Element)
  var count: Int { get }
  subscript(i: Int) -> Element { get }
}

struct IntStack: Container {
  private var items: [Int] = []
  mutating func append(_ item: Int) { items.append(item) }
  var count: Int { items.count }
  subscript(i: Int) -> Int { items[i] }
}

func allItemsMatch<C1: Container, C2: Container>(_ c1: C1, _ c2: C2) -> Bool
where C1.Element == C2.Element, C1.Element: Equatable {
  guard c1.count == c2.count else { return false }
  for i in 0..<c1.count { if c1[i] != c2[i] { return false } }
  return true
}

//This example defines a generic Container protocol and checks if two containers match element-wise.
//
