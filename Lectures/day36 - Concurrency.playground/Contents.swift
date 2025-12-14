import UIKit

//Swift Concurrency
//Write safe, structured async code with async/await, Tasks, actors, and cooperative cancellation.
//
//Basic GCD (Grand Central Dispatch)
//Use DispatchQueue to perform work asynchronously.
//
//The example below runs a task on a background queue and waits for it to complete.
//
//Syntax:
//
//DispatchQueue.global().async { ... }
//DispatchGroup.enter()
//DispatchGroup.leave()
//DispatchGroup.wait()
//Example
import Dispatch

print("Start")
let group = DispatchGroup()
group.enter()
DispatchQueue.global().async {
  print("Background work")
  group.leave()
}
group.wait()
print("Done")

//This example runs work on a background queue and waits for completion using a DispatchGroup.
//
//Tip: In modern Swift, prefer async/await and Task over GCD for structured concurrency.
//
//Async/Await with Task
//async/await lets you write asynchronous code that looks like synchronous code.
//
//Use Task to start concurrent work from synchronous contexts.
//
//Syntax:
//
//func name() async -> T {}
//await value
//Task { ... }
//Example
import Dispatch

func fetchValue() async -> Int { 7 }

print("Start")
let semo = DispatchSemaphore(value: 0)
Task {
  let v = await fetchValue()
  print("Got \(v)")
  semo.signal()
}
semo.wait()
print("Done")

//This example starts asynchronous work with Task and awaits a value using async/await.
//
//async let (Parallel Child Tasks)
//Use async let to start multiple child tasks in parallel and await their results.
//
//Syntax: async let name = expression() starts a child task; use await when reading the value.
//
//Example
import Dispatch

func fetch(_ id: Int) async -> Int { id * 10 }

print("Start")
let semi = DispatchSemaphore(value: 0)
Task {
  async let a = fetch(1)
  async let b = fetch(2)
  let total = await (a + b)
  print("Total \(total)")
  semi.signal()
}
semi.wait()
print("Done")

//This example launches two child tasks in parallel and awaits both to compute a total.
//
//Async/Await with Errors
//Async functions can also throw.
//
//Combine try with await and handle failures with do/catch.
//
//Syntax:
//
//func name() async throws -> T
//try await
//do { ... } catch { ... }
//Example
import Dispatch

enum FetchError: Error { case bad }

func fetch(_ ok: Bool) async throws -> Int {
  if !ok { throw FetchError.bad }
  return 42
}

print("Start")
let seme = DispatchSemaphore(value: 0)
Task {
  do {
    let v = try await fetch(false)
    print("ok \(v)")
  } catch {
    print("error")
  }
  seme.signal()
}
seme.wait()
print("Done")

//This example shows error handling with try/await and do/catch around an async function.
//
//Task Groups
//Use withTaskGroup to fan out concurrent child tasks and aggregate their results.
//
//Syntax: withTaskGroup(of: ReturnType.self) { group in ... } adds tasks and iterates results.
//
//Example
import Dispatch

func square(_ n: Int) async -> Int { n * n }

print("Start")
let semj = DispatchSemaphore(value: 0)
Task {
  var results: [Int] = []
  await withTaskGroup(of: Int.self) { group in
    for n in [1,2,3] {
      group.addTask { await square(n) }
    }
    for await val in group {
      results.append(val)
    }
  }
  print(results.sorted().map(String.init).joined(separator: ","))
  semj.signal()
}
semj.wait()
print("Done")

//This example concurrently computes squares for a list of numbers and aggregates the results from the task group.
//
//Actors and MainActor
//Actors protect their mutable state from data races by serializing access.
//
//Use @MainActor to mark code that must run on the main thread (e.g., UI updates).
//
//Syntax: actor Name { ... } defines an actor; call methods/properties with await from outside.
//
//MainActor: Annotate types/functions with @MainActor to run on the main thread.
//
//Example
import Dispatch
    
actor SafeCounter {
  private var value = 0
  func increment() { value += 1 }
  func get() -> Int { value }
}

let counter = SafeCounter()
print("Start")
let semq = DispatchSemaphore(value: 0)
Task {
  await withTaskGroup(of: Void.self) { group in
    for _ in 0..<1000 {
      group.addTask { await counter.increment() }
    }
  }
  print("Final: \(await counter.get())")
  semq.signal()
}
semq.wait()
print("Done")

//This example uses an actor to protect mutable state and aggregates increments via a task group.
//
//Tip: Annotate UI-facing APIs with @MainActor to ensure they execute on the main thread.
//
//Task Cancellation
//Cancel long-running work by calling task.cancel() and checking for cancellation with Task.isCancelled or try Task.checkCancellation().
//
//Syntax:
//
//t.cancel()
//Task.isCancelled
//try Task.checkCancellation()
//Example
import Dispatch

func slowWork() async throws {
  for i in 1...5 {
    try await Task.sleep(nanoseconds: 300_000_000) // 0.3s
    try Task.checkCancellation()
    print("Step ", i)
  }
}

let sema = DispatchSemaphore(value: 0)
let t = Task {
  do { try await slowWork() } catch { print("Cancelled") }
  sema.signal()
}

DispatchQueue.global().asyncAfter(deadline: .now() + 0.7) {
  t.cancel()
}

sema.wait()

//This example demonstrates cooperative cancellation by cancelling a running task and checking for cancellation.
