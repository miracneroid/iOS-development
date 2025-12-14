import UIKit

//
//Enums & Pattern Matching
//Model finite sets of cases with enum, add associated values, and match using switch with patterns.
//
//Basic Enums
//Use enum to define a type with a fixed set of cases.
//
//Syntax: enum Direction { case north, south, east, west }
//
//Example
enum Direction { case north, south, east, west }

let d: Direction = .east
print(d)

//This example defines an enum of directions and creates a value using a short dot syntax.
//
//Associated Values
//Attach data to each case using associated values.
//
//Syntax: enum Result { case success(T), failure(Error) }
//
//Example
enum Barcode {
  case upc(Int, Int, Int, Int)
  case qr(String)
}

let b1 = Barcode.upc(8, 85909, 51226, 3)
let b2 = Barcode.qr("HELLO")

//This example shows a barcode which may be a UPC with four integers or a QR code with a string.

//Pattern Matching
//Use switch with patterns to extract associated values.
//
//Syntax:

//switch value { case .case(let x): ... }
//if case for single-case checks
//Example
func describe(_ code: Barcode) {
  switch code {
  case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem)-\(manufacturer)-\(product)-\(check)")
  case .qr(let text):
    print("QR: \(text)")
  }
}

describe(b1)
describe(b2)

//This example uses pattern matching to bind associated values and print a formatted description.
//
//Raw Values
//Provide default raw values (e.g., Int or String) and initialize from them.
//
//Syntax:

//enum HTTPStatus: Int { case ok = 200, notFound = 404 }
//HTTPStatus(rawValue: 200)
//Example
enum HTTPStatus: Int { case ok = 200, notFound = 404 }

let status = HTTPStatus(rawValue: 200)
print(status == .ok)

//This example maps an integer status code back to an enum value using a failable initializer.
//
//Tip: Prefer associated values when each case needs different data; use raw values only when you must map to a primitive like an API code.
