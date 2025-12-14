import UIKit

//Swift Access Control
//Restrict visibility of types and members with public, internal, fileprivate, and private.
//
//Levels
//Swift's defaults are safe by design: internal is the default.
//
//Syntax:
//
//public (visible to other modules)
//internal (module-only, default)
//fileprivate (this file)
//private (this scope type/extension)
//Example
public struct APIClient {
  public init() {}
  public func request() {}
}

struct Repository { // internal by default
  fileprivate var cache: [String: String] = [:]
  private func reset() { cache.removeAll() }
}

//This example shows public APIs, a module-internal type, a file-scoped property, and a private helper.
//
//
//Types and Members
//A member cannot be more visible than its enclosing type.
//
//Syntax:
//
//public struct S { internal var x: Int } (valid)
//but not internal struct S { public var x: Int }
//Example
internal struct Box { // whole type is internal
  public var value: Int // warning/error: member more visible than type
}

//
//Members cannot exceed the visibility of their type; lower or equal visibility is allowed.
//
//Tip: Prefer the most restrictive access level that still enables usage.
