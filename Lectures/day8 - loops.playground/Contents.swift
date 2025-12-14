import UIKit

//Swift Ranges
//Use ranges to express a sequence of values.
//
//a...b is a closed range including both ends.
//
//a..<b is a half-open range up to but not including b.
//
//Closed and Half-Open
//Use a...b for closed ranges (inclusive) and a..<b for half-open ranges (exclusive upper bound).
//
//Example

for n in 1...5 {
      print(n)
    }
    for n in 1..<5 {
      print(n)
    }
    let r = 10...12
    print(r.contains(11))
    print(r.contains(13))
//
//One-Sided Ranges
//One sided ranges omit one end: ...b starts from the beginning, and a... goes to the end.
//
//Example
let arr = [0, 1, 2, 3, 4]
print(arr[...2])  // first three elements (indices 0...2)
print(arr[2...])  // from index 2 to the end

//This example slices an array using one sided ranges: up to and including index 2, and from index 2 to the end.


//Swift While Loop
//Repeat code while a condition is true using while.
//
//Use repeat { ... } while to check the condition after the loop body.
//
//while
//The while loop checks the condition before each iteration.
//
//Example
var n = 3
while n > 0 {
  print(n)
  n -= 1
}
print("Liftoff!")

//Swift Repeat/While Loop
//Use repeat { ... } while condition to run the body at least once.
//
//Repeat/while Loop Example
//This example uses a repeat/while loop to print "Try #1" and "Try #2".
//
//Example
var attempts = 0
repeat {
  attempts += 1
  print("Attempt #\(attempts)")
} while attempts < 3

//Runs Once Even If Condition Is False
//Because repeat checks the condition after the body, it executes at least once.
//
//Example
var m = 0
repeat {
  print("Runs once")
} while m > 0

//Swift While (Real-Life Examples)
//Use loops to retry operations, poll statuses, or process queues carefully with exit conditions.
//
//While Loop from 3 to 1
//Count down from 3 to 1.
//
//Example
var remaining = 3
while remaining > 0 {
  print("Remaining: \(remaining)")
  remaining -= 1
}

//Poll Until Success
//Repeat an action with a cap on attempts until a condition is met.
//
//Example
var attempt = 0
var success = false
while !success && attempt < 5 {
  attempt += 1
  print("Checking... #\(attempt)")
  if attempt == 3 {
    success = true
    print("Success!")
  }
}

//Swift For Loop
//Use for-in to iterate over ranges, arrays, dictionaries, and other sequences.
//
//Iterate a Range
//Use a range to loop a fixed number of times.
//
//Example
for i in 1...3 {
  print(i)
}

//Iterate an Array
//Loop through an array with for-in or enumerated() to access index and value.
//
//Example
let nums = [10, 20, 30]
for n in nums {
  print(n)
}
for (index, value) in nums.enumerated() {
  print("index: \(index), value: \(value)")
}

//Swift Nested Loops
//Place a loop inside another loop to generate combinations or matrices.
//
//Generate combinations with nested loops
//Use inner and outer loops to produce pairs or grids from ranges and collections.
//
//Example
for i in 1...2 {
  for j in 1...3 {
    print(i, j)
  }
}

//Multiplication Table
//Use nested loops to build a small multiplication table.
//
//Example
for i in 1...3 {
  var row = ""
  for j in 1...3 {
    row += "\(i*j) "
  }
  print(row)
}

//Swift For-Each Loop
//Use forEach to iterate sequences with a closure.
//
//Iterate with forEach closures
//Pass a closure to forEach to process each element of a sequence.
//
//Example
["A","B","C"].forEach { print($0) }

//Enumerated forEach
//Use enumerated() with forEach to get index and value.
//
//Example
let items = ["A","B","C"]
items.enumerated().forEach { print("\($0.offset): \($0.element)") }

//Swift For Loop (Real-Life)
//Use loops to process arrays, paginate data, or aggregate results.
//
//Process arrays and aggregate results
//Loop over a collection and accumulate values to compute totals like sums or averages.
//
//Example
let numbers = [1,2,3,4,5]
var sum = 0
for n in numbers { sum += n }
print(sum)

//Filter Even Numbers
//Filter a collection to keep only the values you need.
//
//Example
let evens = numbers.filter { $0 % 2 == 0 }
print(evens)
