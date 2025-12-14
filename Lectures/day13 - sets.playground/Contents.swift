import UIKit

//Swift Sets
//Sets store unique values with no defined order.
//
//Test membership with contains, and use union/intersection operations.
//
//Deduplicate Values
//Use sets to deduplicate values from an array.
//
//Example
var letters: Set<Character> = ["a", "b", "a"]
print(letters.contains("a"))

//This example creates a Set which deduplicates values and checks membership.
//

//Set Operations
//Combine or compare sets using union, intersection and subtracting.
//
//Example
let a: Set<Int> = [1, 2, 3]
let b: Set<Int> = [3, 4]
print(a.union(b).sorted())         // [1, 2, 3, 4]
print(a.intersection(b).sorted())  // [3]
print(a.subtracting(b).sorted())   // [1, 2]

//This example shows how to use set operations to combine or compare sets:
//
//union combines sets
//intersection finds common elements
//subtracting removes common elements
