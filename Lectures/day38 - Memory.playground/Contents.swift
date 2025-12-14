import UIKit

//Swift Memory Management
//Understand ARC, avoid retain cycles with weak/unowned, and manage closure captures safely.
//
//Automatic Reference Counting (ARC)
//Classes are reference types.
//
//Swift uses ARC to automatically track and release class instances when no strong references remain.
//
//Example
class Box {
  let name: String
  init(_ n: String) { name = n; print("init \(n)") }
  deinit { print("deinit \(name)") }
}

do {
  let b = Box("A")
  print("in scope")
}
print("after scope")

//This example demonstrates ARC's automatic deallocation of the Box instance when it goes out of scope.
//
//Tip: Use weak to avoid strong reference cycles between class instances.
//
//Strong Reference Cycles
//A strong reference cycle occurs when two class instances hold strong references to each other, preventing ARC from deallocating them.
//
//Mark one side as weak (or unowned when appropriate) to break the cycle.
//
//Example
class Person {
  let name: String
  var apartment: Apartment?
  init(name: String) { self.name = name }
  deinit { print("Person deinit") }
}

class Apartment {
  let unit: String
  weak var tenant: Person? // weak breaks the cycle
  init(unit: String) { self.unit = unit }
  deinit { print("Apartment deinit") }
}

do {
  var john: Person? = Person(name: "John")
  var unit: Apartment? = Apartment(unit: "4A")
  john!.apartment = unit
  unit!.tenant = john
  john = nil   // Person deinit
  unit = nil   // Apartment deinit
}

//Declaring tenant as weak breaks the cycle so both objects deallocate when their strong references are set to nil.
//
//REMOVE ADS
//
//Closures and Capture Lists (weak self)
//Closures capture variables by default.
//
//When a class stores a closure that references self, use a capture list like [weak self] to avoid retain cycles.
//
//Example
@MainActor
class Loader {
  var onComplete: (() -> Void)?
  func load() {
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [weak self] in
      guard let self = self else { return }
      print("Finished: \(self)")
      self.onComplete?()
    }
  }
  deinit { print("Loader deinit") }
}

do {
  let loader = Loader()
  loader.onComplete = { print("done callback") }
  loader.load()
}
// loader can be deallocated if nothing else references it

