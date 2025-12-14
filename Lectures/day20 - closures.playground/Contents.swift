import UIKit

//Swift Closures
//Capture values and pass behavior as first-class functions using closure expressions and trailing closure syntax.
//
//Closure Expressions
//Closures are self-contained blocks of functionality that can be passed and stored.
//
//Syntax:

//{ (params) -> Return in statements }
//shorthand args $0, $1, and type inference.
//Example
let nums = [3, 1, 2]
let sorted = nums.sorted { $0 < $1 }
let strings = sorted.map { "#\($0)" }
print(strings) // ["#1", "#2", "#3"]

//This example sorts numbers using a closure with shorthand arguments and maps them to strings.
//
//Capturing Values
//Closures capture constants and variables from the surrounding context by reference.
//
//Syntax: func makeCounter() -> () -> Int { var n = 0; return { n += 1; return n } }
//
//Example
func makeCounter() -> () -> Int {
  var n = 0
  return {
    n += 1
    return n
  }
}

let next = makeCounter()
print(next()) // 1
print(next()) // 2

//The closure remembers n between calls, producing an incrementing counter.

//Trailing Closures
//If the last parameter is a closure, you can use trailing closure syntax for readability.
//
//Syntax: fn(x) { ... } instead of fn(x, closure: { ... })
//
//Example
func repeatTimes(_ n: Int, _ work: () -> Void) {
  for _ in 0..<n { work() }
}

repeatTimes(3) {
  print("Hi")
}

//This example uses trailing closure syntax to pass a block that runs three times.
//
//Tip: Use shorthand argument names ($0, $1) and trailing closures for readability.
