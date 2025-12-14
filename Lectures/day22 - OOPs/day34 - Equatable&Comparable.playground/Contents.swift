import UIKit

//Swift Equatable & Comparable
//Adopt Equatable and Comparable so your types support == and ordering operations.
//
//Derived vs Custom Conformance
//Derived types inherit conformance automatically, while custom conformance requires explicit implementation.
//
//Example
struct Point: Equatable, Comparable {
  var x: Int, y: Int
  static func == (lhs: Point, rhs: Point) -> Bool { lhs.x == rhs.x && lhs.y == rhs.y }
  static func < (lhs: Point, rhs: Point) -> Bool { (lhs.x, lhs.y) < (rhs.x, rhs.y) }
}

let a = Point(x: 1, y: 2), b = Point(x: 1, y: 3)
print(a == b) // false
print(a < b)  // true

//
//Sorting with Comparable
//Conform to Comparable to sort custom types and use min()/max().
//
//Example
struct Score: Comparable {
  let user: String
  let value: Int
  static func < (l: Score, r: Score) -> Bool { l.value < r.value }
}

let scores = [Score(user: "A", value: 10), Score(user: "B", value: 5), Score(user: "C", value: 7)]
let sorted = scores.sorted()
print(sorted.map { $0.value })
print(sorted.last!.value)


