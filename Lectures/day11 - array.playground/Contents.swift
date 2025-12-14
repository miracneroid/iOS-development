import Foundation

// In this module we'll start array/list. We can call them any either array or list

// Array/List are one of the most usefull dataypes in computers ever created. We already are aware of variables, array are it's close relatives just with more super powers. variables can hold upto only one data value at a time, we can't store series of data values in it. Fox example if we going for grocery shopping and we wanna make a list we tear down a paper and write everything in one sheet in one go. But if we had to digitalize that list instead of writting in paper we wanna write in computer then? If we'll using the traditional variable methods, it will gonna take us ages. Like then we have to create a new variable for each and every item that we wanna buy.

// Solution -> Why we don't create a data type in computer that actually works like that paper list only, that can store all the grocery items at one place in one go? That's how array/list was born.

// Array/List -> It's a datatype which can store as many values as much user want's in one variable. It store all of it's values into continous memory locations. For example -> if the memory address of the first element is Tf20023, then next will be at Tf20024 and then next at Tf20025 and so on.......

// Enough talking, let's intialize an array/list now ->
let array = [
    "Ayush",
    "Srivastava",
    "22",
    "Boston",
    "Middle East",
    "Asia Paccific",
    "Moon"
 ]
print(array)

var list: [String] = ["Ayush", "Srivastava", "22", "Boston", "Middle East", "Asia Paccific", "Moon"]
print(list)

// You noticed that we saved only one kind of data in the array/list i.e String, what if we want to add multiple types of data?
// For that we need to manually describe that this particualr array/list can accept data of any type. If we'll not then the data type we entered first in the array/list will be the default datatype of that array/list

var list1: [Any] = ["Ayush", "Srivastava", 22, 342.34, true, "Boston", "Middle East", "Asia Pacific", "Moon"]
print(list1)

// What if we are at some stage where we completely forgot what's the datatype of the following variable like in the above case botha are indentical so we use ->
type(of: list1) // this helps us to identify the data type of a particualr object


// These are two way of organizing your code, the syntax is one only variable_name = [] , i.e create a variable and then assign square brackets to it [], and boom array/list is initialized and ready to use.

// Now the question arries how do we acess these items? Like in variable we just call it to access it but how in array?
// Then the answer is using indexing, which basically means we count the placevalue of the item we wanna access and call it by subtracting it by 1.
// Why subtracting by 1?
// It's because in computers the number starts from 0, but 0 has no value right? Yes you are write but computer is a dumb machine not as intelligent as us. So it treat 0 as a countable items, that's why counting starts from 0. therefore i said supposing u'll start the count from 1 so subtract 1 from your value to match computer value.

// let's say we wanna access my name from the list then how we do it? Socho Socho
list1[0] // this will return my first name as it's the 0th element of the array/list likewise
list1[1]
list1[2]
list1[3]
list1[4]
list1[5]
list1[6]
list1[7]
list1[8]
print()
// Let's learn Slicing, yeah it's similar to apple slicing lol. Slicing we all know when we slice anything it's basically means we cutting into some what based on our requirments, like we slice apple pieces sometimes thin sometimes thick and sometime medium, etc like wise we can slice array's element, based on our requirments

// As we can list1 array has my details in it, what if I wanna use this array to print my full name, and nothing else? Then i have to cut the array in such a way that it only display my first name and Surname that's it. Cutting array based on our requirement is known as Array Slicing

// let's print my full name
print("Full Name -> \(list1[0...1])") // ArraySlice

var nums = [10, 20, 30, 40, 50] //  10 -> 0 index, 20 -> 1 index, 30 -> 2 index , 40 -> 3 index, 50 - > 4 index
let middle = nums[1...3]        // ArraySlice<Int> // Values -> [20, 30, 40]
print(middle)                   // [20, 30, 40]
let copy = Array(middle)        // Array<Int>
print(copy)

// ArraySlice
// Use a half-open range to exclude the upper bound:
//
// Example
let slice = nums[1..<3]   // indices 1 and 2
print(slice)               // [20, 30]

// One-Sided Slices
// Use one-sided ranges to slice from the start or to the end.
//
// Example
let arr = [0, 1, 2, 3, 4]
print(arr[...2])  // first three elements (0...2)
print(arr[2...])  // from index 2 to the end

//Swift Arrays: Indices & Bounds
//Arrays have startIndex and endIndex (one past last).

//Use indices to loop valid positions.

//Out-of-bounds access crashes at runtime.

//Use indices to visit only valid positions.
//
//Example
let items = [10, 20, 30]
print(items.startIndex)       // 0
for i in items.indices {
  print("index: \(i), value: \(items[i])")
}

//Valid subscript indices: 0..<items.count (zero up to, not including, count).
//
//Example
print(items[0])   // OK
// print(items[3]) // out of bounds
//Use indices for index-and-value access without enumerated().

//Last Valid Index
//Get the last valid index with index(before: endIndex).
//
//Example
let lastIndex = items.index(before: items.endIndex)
print(lastIndex)        // 2
print(items[lastIndex]) // 30

// This is tiring like manually writting each line, let's outsmart the system, we already know about loops let's try them.

// Loop Elements

// Use for-range to loop values.
for i in 0..<list1.count{
    print("List1 Element: \(i) -> ",list1[i], terminator: " ") // prints on one line
}

// Use for-in to loop values.
for items in list1 {
  print(items)
}

// Use enumerated() for index and value.
for (index, value) in list1.enumerated() {
  print("Index : \(index) -> Value : \(value)")
}

//Use forEach for a functional style loop. It reads values but cannot use break/continue.
list1.forEach { print($0) }
list1.enumerated().forEach { print("\($0.offset): \($0.element)") }

// Point to notice -> One is created using var and the other is created using let, we already know that variable created using var are mutable types and let are immutable types as they become constants right after initiaizing them. But hey does that means we can have some fun with list variabels, since it's of mutable type. But I'm not up for the boring method like we use to do with variabels. Let's find out

// We just learnt that we can access elements by it's index, but imagine if the line where you declared your array is out of site now, then how will you count total no of elements? Well we can use the .count
print(list1.count)

// likewise how we gonna check if the array has element or isEmpty?
print(list1.isEmpty)    // false

// Can I add more data to the list vairable? Answer is yes. But how? For that ->
// Call the array/list name and then use append function on it
list.append("Sun")
print(list)

// What if we wish to delete element?
list.popLast()
print(list)

// We can observe that above append and pop operations only add and delete element from the end what if we wish to add or delete from first position or mid or any? ->

// Well we learnt indexing few minutes ago, and it just clicked in my mind that if we can access elements using indexing can't we perform operations on it using indexing?
// If I wanna append an element in an array at any specific point we gonna use .insert and if wanna delete an element at any specific index we use .remove and specify index

// Append at any specific index
list1.insert("X", at: 1)
// Delete at any specific index
list1.remove(at: 5)

// We can even perform some operations on array/lists for example ->
var both = list + array
print(both)

// There's always more than one way of doing things for like append ->
both += ["Hey you discovered a new way of appending"]
print(both)

//Swift Arrays: Multidimensional
//Use nested arrays to represent 2D (or higher) structures such as matrices and grids.
//
//2D Arrays
//Store rows as arrays inside an outer array, then index as grid[row][col] to access items.
//
//Example
var grid = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]
print(grid[0][1]) // 2
for row in grid {
  print(row)
}

//Update a Cell
//Change a value by indexing into the specific row and column.
//
//Example
grid[1][1] = 99
print(grid[1])      // [4, 99, 6]
print(grid[1][1])   // 99

//Swift Arrays: Real-Life Examples
//Arrays are everywhere: rendering lists, aggregating values, finding items, and transforming data.
//
//Aggregate and Transform
//Use filter, map, and reduce to process arrays declaratively.
//
//Example
let scores = [72, 88, 95, 64, 83]
let passed = scores.filter { $0 >= 75 }
let curved = passed.map { $0 + 5 }
let average = curved.reduce(0, +) / curved.count
print(passed)
print(curved)
print("Average: \(average)")

//Filter to keep passing scores, map to apply a curve, then reduce to compute an average.

//Search & Index
//Check for membership and find the index of a value.
//
//Example
let names = ["Kai", "Bjorn", "Stale"]
print(names.contains("Bjorn"))            // true
if let i = names.firstIndex(of: "Stale") {
  print(i)                                 // 2
}

//Swift Sorting
//Sort arrays with sorted() (returns new) or sort() (in-place). Provide a closure for custom order.
//
//Sort
//Sort ascending using sorted() and descending in-place using sort(by:).
//
//Example
let ascending = nums.sorted()
print(ascending)      // [1, 2, 3]
nums.sort(by: >)
print(nums)           // [3, 2, 1]

//Case-Insensitive Sort
//Provide a custom closure to sort strings without regard to case.
//
//Example
let named = ["bob", "Alice", "dave"]
let caseInsensitive = named.sorted { $0.lowercased() < $1.lowercased() }
print(caseInsensitive) // ["Alice", "bob", "dave"]



// In the end I got a mind blowing discovery for you to leave you with some self doubts,and for your research purpose as I strongly belive knowledge gained by self discovery are the best onces.

// So I introduce you to an array/list which was initialized using let but still is mutable

let oldArray = NSMutableArray(
    array: [
        "hello",
        21,
        234.52,
        true,
        "USA"
    ]
)
print(oldArray)

func changeTheArray(_ array: NSArray) {
    let copy = array as! NSMutableArray
    copy.add("bazz")
}
changeTheArray(oldArray)
print(oldArray)

var name = "ayush"
print(name.uppercased())
print(name)
