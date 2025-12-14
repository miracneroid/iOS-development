import UIKit

//Swift OOP
//Understand value vs. reference semantics with structs and classes, and how copying differs between them.
//
//Object-Oriented Programming
//Swift supports object-oriented programming with classes and protocols.
//
//Object-oriented programming (OOP) is a programming paradigm based on the concept of "objects", which can contain data in the form of fields (often known as attributes or properties), and code, in the form of procedures (often known as methods).
//
//Swift uses classes and protocols to implement OOP.
//
//Classes: Reference types, support inheritance, protocols, access control, and memory management.
//Structs: Value types, support inheritance, protocols, access control, and memory management.

//Structs vs Classes
//Use structs for value types and classes for reference types.
//
//Syntax:
//
//struct Name { ... }
//class Name { ... }
//Value type (struct): Copies on assignment and passing.
//Reference type (class): Multiple references point to the same instance.
//Example
struct Point { var x: Int; var y: Int }
var p1 = Point(x: 1, y: 2)
var p2 = p1      // copy
p2.x = 10
print(p1.x)      // 1
print(p2.x)      // 10

class Counter { var value = 0 }
let c1 = Counter()
let c2 = c1      // reference
c2.value = 5
print(c1.value)  // 5

//This example shows that structs copy on assignment while classes share references, so mutations on one reference affect the other.
