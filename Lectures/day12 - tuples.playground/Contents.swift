import UIKit


//Swift Tuples & Type Aliases
//Group values into lightweight records with tuples, and name complex types using typealias for clarity.
//
//Tuples
//Tuples bundle multiple values into a single compound value without defining a struct.
//
//Syntax:
//
//let user: (String, Int) = ("Morgan", 30)
//labels: (name: String, age: Int)
//Example
let user: (name: String, age: Int) = ("Morgan", 30)
print(user.name)
print(user.age)

let http: (code: Int, message: String) = (200, "OK")
let (code, msg) = http
print(code)
print(msg)

//This example creates labeled tuples, accesses fields by name, and destructures into separate variables.

//Type Aliases
//Give a readable name to an existing type using typealias.
//
//Syntax: typealias Completion = (Result<Void, Error>) -> Void
//
//Example
typealias JSON = [String: Any]
typealias Completion = (Result<Void, Error>) -> Void

func parse(_ data: Data) -> JSON { return [:] }

func save(completion: Completion) {
  completion(.success(()))
}

//This example defines aliases for a JSON dictionary and a completion closure to make function signatures clearer.
//
//Tip: Use tuples for small ad-hoc groupings; prefer structs for reusable models.
