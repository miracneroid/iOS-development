import UIKit

//Swift Inheritance
//Create class hierarchies where subclasses inherit properties and methods and can override behavior.
//
//Subclass and Override
//Use override to override a superclass method.
//
//Example
class Animal { func speak() { print("...") } }
class Dog: Animal { override func speak() { print("Woof") } }
let a = Animal(); a.speak()
let d = Dog(); d.speak()

//Call super
//Use super to extend a superclass method when overriding.
//
//Example

class Animals { func speak() { print("...") } }
class Dogs: Animals {
  override func speak() {
    super.speak()
    print("Woof")
  }
}
let de = Dogs()
de.speak()
