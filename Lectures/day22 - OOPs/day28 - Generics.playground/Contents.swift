import UIKit

//Swift Generics
//Write reusable code with type parameters and constraints to ensure correctness without duplication.
//
//Generic Functions
//Generics let you write flexible, reusable functions and types.
//
//Use a placeholder type name like T and constrain when needed.
//
//Syntax:
//
//func name<T>(_ a: T) -> T
//struct Box<T> { ... }
//Constraints:
//
//T: Comparable
//where clauses for more complex bounds.
//Example
func swapTwo<T>(_ a: inout T, _ b: inout T) {
  let tmp = a
  a = b
  b = tmp
}

var x = 1, y = 2
swapTwo(&x, &y)
print(x)
print(y)

//This example defines a generic T-typed swap function and shows it working with integers.
//
//
//Generic Constraints (where)
//Constrain generic parameters to types that meet certain requirements, like Comparable, using where clauses.
//
//Example
func minValue<T: Comparable>(_ a: T, _ b: T) -> T { a < b ? a : b }

print(minValue(3, 7))        // 3
print(minValue("b", "a"))  // a

//This example constrains T to Comparable so < can be used to pick a minimum.
//
//Tip: Constrain generic parameters, e.g.
//
//T: Comparable, to use operations like < or ==.
