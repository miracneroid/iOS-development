import UIKit

//Swift Polymorphism
//Treat related types uniformly via inheritance or protocol conformance.
//
//Override methods and rely on dynamic dispatch.
//
//Basic Polymorphism
//Use inheritance to treat related types uniformly.
//
//Example
class Animal { func speak() { print("...") } }
class Dog: Animal { override func speak() { print("Woof") } }
class Cat: Animal { override func speak() { print("Meow") } }

let animals: [Animal] = [Dog(), Cat()]
animals.forEach { $0.speak() }

//Protocol Polymorphism
//Use a protocol to treat unrelated types uniformly.
//
//Example
protocol Speaker { func speak() }
struct Dogs: Speaker { func speak() { print("Woof") } }
struct Cats: Speaker { func speak() { print("Meow") } }

let speakers: [Speaker] = [Dogs(), Cats()]
speakers.forEach { $0.speak() }
