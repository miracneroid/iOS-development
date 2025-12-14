import UIKit

//Swift Extensions
//Add functionality to existing types without subclassing, including methods, computed properties, and protocol conformances.
//
//Computed Properties and Methods
//Extend any type to add helpers that are scoped to that type.
//
//Syntax: extension Type { var computed: T { ... }; func util() { ... } }
//
//Example
extension String {
  var isBlank: Bool { trimmingCharacters(in: .whitespacesAndNewlines).isEmpty }
  func repeated(_ n: Int) -> String { String(repeating: self, count: n) }
}

print("  ".isBlank)    // true
print("Hi".repeated(3)) // HiHiHi

//This example adds a computed property and a helper method to String.
//
//Protocol Conformance in Extensions
//Adopt protocols outside the original type declaration to separate concerns.
//
//Syntax: extension Type: Protocol { ... }
//
//Example
protocol Describable { func describe() -> String }

struct User { let name: String }

extension User: Describable {
  func describe() -> String { "User(\(name))" }
}

print(User(name: "Morgan").describe())

//This example adds Describable conformance to User via an extension.
//
//
//Nesting by Responsibility
//Organize large types using multiple extensions grouped by feature (e.g., networking, formatting).
//
//Syntax:
//
//extension Type { /* Feature A */ }
//extension Type { /* Feature B */ }
//Example
struct Article { let title: String; let body: String }

extension Article { // Formatting helpers
  var preview: String { String(body.prefix(40)) + "..." }
}

extension Article { // Networking stub
  static func fetchAll() -> [Article] { [] }
}

//This example groups helpers by purpose, keeping the core declaration concise.
//
//Tip: Use extensions to organize code into focused capabilities per type.
