import Foundation

// Type casting basically means changing the type of a data into some other desired type

var age = 243
// the age is in integer data type but what if we needed it in float? double? or string? type

var age_string = String(age)
var age_float = Float(age)
var age_double = Double(age)

//    Swift Type Casting
//    Use as, as?, and as! to convert between types, especially with protocols and Any.
//
//    Upcasting and Downcasting
//    Convert a value to a supertype (upcast) or attempt to convert back to a subtype using optional downcasting with as?.
//
//    Example

let items: [Any] = [1, "Swift"]
for item in items {
  if let i = item as? Int {
    print("Int: \(i)")
  } else if let s = item as? String {
    print("String: \(s)")
  }
}

//    Forced Downcast
//    Use as! only when you are certain of the runtime type. If the cast fails, the program will crash.
//
//    Example
let value: Any = 42
let i = value as! Int   // forced downcast
print(i)

// Prefer optional casting (as?) when the type may vary, and unwrap safely.
