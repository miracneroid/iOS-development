import UIKit

//Swift Error Handling
//Swift Error Handling
//Throw and catch errors explicitly, or convert failures to optionals with try? when appropriate.
//
//Throw, Try, Catch
//Functions can throw errors with throw.
//
//Callers must use try and handle failures with do/catch, or use try? to get an optional result.
//
//Syntax:
//
//func f() throws -> T
//try f()
//try? f()
//do { ... } catch { ... }
//Example
enum InputError: Error { case negative }

func validate(_ n: Int) throws -> String {
  if n < 0 { throw InputError.negative }
  return "ok: \(n)"
}

do {
  let result = try validate(-1)
  print(result)
} catch {
  print("error")
}

let maybe = try? validate(1)
print(maybe ?? "nil")

//Tip: Use defer to run cleanup code before exiting the current scope, even when errors are thrown.
//
//REMOVE ADS
//
//Defer (Cleanup)
//Use defer to ensure cleanup code always runs when a scope exits, even if an error is thrown.
//
//Example
enum FileError: Error { case fail }

func work(_ ok: Bool) throws {
  print("start")
  defer { print("cleanup") }
  if !ok { throw FileError.fail }
  print("done")
}

do { try work(false) } catch { print("error") }

//This example prints "cleanup" even when an error is thrown, guaranteeing resource cleanup.
