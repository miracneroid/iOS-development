import UIKit

//Swift Collections
//Use arrays, dictionaries, and sets to store ordered lists, key-value pairs, and unique items.
//
//Arrays
//Arrays store ordered lists of values.
//
//Syntax: [Type] for type, append with .append, count with .count, access with array[index].
//
//Example
var nums: [Int] = [1, 2, 3]
nums.append(4)
print(nums.count)    // 4
print(nums[0])       // 1

//This example creates an [Int] array, appends a value, reads the count, and accesses the first element.
//
//Dictionaries
//Dictionaries store key-value pairs.
//
//Syntax: [Key: Value] for type, assign with dict[key] = value, read with dict[key] ?? default.
//
//Example
var ages: [String: Int] = ["Kai": 30]
ages["Elisabeth"] = 25
print(ages["Kai"] ?? 0)

//This example defines a [String: Int] dictionary, inserts a key, and reads with nil-coalescing.

//Sets
//Sets store unique items.
//
//Syntax: Set<Element> or literal, test membership with .contains.
//
//Example
var letters: Set<Character> = ["a", "b", "a"]
print(letters.contains("a"))

//This example creates a Set which deduplicates values and checks membership with contains.

//Swift map, filter, reduce
//Transform and aggregate collections with map, filter, and reduce.
//
//Transform and aggregate with map/filter/reduce
//Use map to transform elements, filter to select a subset, and reduce to combine into a single result.
//
//Example=
let doubled = nums.map { $0 * 2 }
print(doubled)
let evens = nums.filter { $0 % 2 == 0 }
print(evens)
let sum = nums.reduce(0, +)
print(sum)

//Convert and Sum
//Use compactMap to convert valid strings to numbers, then reduce to sum.
//
//Example
let raw = ["1", "x", "2", "3"]
let ints = raw.compactMap { Int($0) }   // [1, 2, 3]
let total = ints.reduce(0, +)
print(total)

//Swift Collection Protocols
//Arrays, Sets and Dictionaries conform to Sequence and Collection, which provide common APIs like count and isEmpty.
//
//Common APIs
//Use count and isEmpty to check collection size.
//
//Example
let arr = [10, 20, 30]
print(arr.count)
print(arr.isEmpty)
let s: Set<Int> = [1, 2, 3]
print(s.contains(2))
print(s.isEmpty)

//Indices
//Use the indices property to iterate valid positions.
//
//Example
for i in arr.indices {
  print("index: \(i), value: \(arr[i])")
}

