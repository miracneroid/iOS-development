import UIKit

// We already know variabels let's perform operations now. Not surgical operations mathemateical operations

var a = 12
var b = 43

var sum = a + b
var difference = a - b
var multiplication = a * b
var divison = a / b

print(sum)
print(difference)
print(multiplication)
print(divison)

// let's do shorthand addition and subtraction

a += 1 // -> this is basically increment operator, using which u can increment by 1 or 2 or whatever value you choose
b -= 1 // -> like wise this is know as decrement operator, being used to reduce value by a number

// We can perform operations on almost all the data types, for ex - Strings, float, double etc

var name = "Ayush"
var surname = "Srivastava"
var fullName = name + " " + surname
// While performing operations on string always remember some operations like addition and subtraction in string can only happen between same data type items only, i.e only a string can be added up to another string and only a subset of string can be subtracted from it's main set of string.
//fullName = fullName - surname // look fullName is the main set with the content Ayush Srivastava, and we subtracting a subset i.e Srivastava from it. Means we can only subtract items i.e already in there, if i say i wanna remove Arav from fullName we can't bcuz it's not there to subtract

// Modulus Operator
var num = 24
var mod = num % 2
print(mod,"mod") // this return the remainders that exist after complete divison

// We had fun session and quick brain-storming sessions, let's get stick to some structure now -> Starting with

///Arithmetic Operators
//Swift supports the four standard arithmetic operators for all number types:

//Operators    Description
//+    Addition
//-    Subtraction
//*    Multiplication
// /   Division
//%    Modulus
//++   Increment
//−−   Decrement

//Integer division truncates toward zero.

//Example

a = 7
b = 3
print(a + b)
print(a - b)
print(a * b)
print(a / b)

//Modulus Operator
//The remainder operator % gives the leftover after integer division.
//
//Example
print(7 % 3)   // 1
print(8 % 2)   // 0
print(10 % 6)  // 4

///Assignment Operators
//They are used to assign values to variables. These are:

//Operators    Description
//=    Assign
//+=    Increments then assign
//-=    Decrements then assign
//*=    Multiplies then assign
// =    Divides then assigns
//%=    Modulus then assigns

//Use = to assign a value.
//
//Compound assignment operators like +=, -=, *= and /= update a variable in place.
//
//Compound Assignment
//Use compound operators like += and *= to update a variable in place.
//
//Example
var total = 10
total += 5
print(total)
total -= 3
print(total)
total *= 2
print(total)
total /= 4
print(total)

//Append to String
//You can also use += with strings to append text to a mutable string variable.
//
//Example
var s = "Hello"
s += ", Swift"
print(s)

///Comparison Operators
//Operators    Description
//==    Is equal to
//!=    Is not equal to
//>    Greater than
//<    Less than
//>=    Greater than or equal to
//<=    Less than or equal to

//Use comparison operators to compare values: ==, !=, >, <, >=, <=.
//
//They return Bool.
//
//Compare Integers
//Use ==, !=, >, <, >=, and <= to compare numeric values.
//
//The result is a Bool.
//
//Example
a = 5
b = 2
print(a == b)
print(a != b)
print(a > b)
print(a < b)
print(a >= 5)

//Compare Strings
//Strings compare lexicographically (dictionary order).
//
//Comparison is case-sensitive.
//
//Example
print("apple" < "banana")  // true
print("Swift" == "Swift")  // true
print("cat" > "car")       // true

///Logical Operators
//Operators    Description
//&&    And operator. Performs logical conjunction on two expressions
//(if both expressions evaluate to True, result is True. If either expression evaluates to False, the result is False)
//||    Or operator. Performs a logical disjunction on two expressions
//(if either or both expressions evaluate to True, the result is True).
//!    Not operator. It performs logical negation on an expression.

//Combine booleans with && (AND), || (OR), and ! (NOT).
//
//Logical AND (&&)
//Both must be true for the result to be true.
//
//Example
let isOwner = true
let isAdmin = false
print(isOwner && isAdmin)
print(true && true)

//Logical OR (||)
//At least one true makes the result true.
//
//Example
let ab = true
let ba = false
print(ab || ba)
print(false || false)

//Logical NOT (!)
//Flip a boolean value: true becomes false and vice versa.
//
//Example
let flags = false
print(!flags)
print(!true)

///Bitwise Operators
//Operators    Description
//&    Binary AND Operator
//|    Binary OR Operator
//^    Binary XOR Operator
//<<    Binary Left Shift Operator
//>>    Binary Right Shift Operator

///Misc Operators
//The conditional Operator cones under this category. The structure is: Condition? X : Y, i.e., If Condition is true? Then 1st expression: Otherwise 2nd Expression All the above operators are common in C also and most of the C or C++ programmers are familiar with these operators. But Swift adds another type of operators that is called Range Operators which are shortcuts for expressing a range of values. They are of two types:

///Range Operators
//Operators    Description
//Closed Range    This (x...y) defines x range that starts from x up to y, and includes the values x and y and the values in between. ..6 gives 1, 2, 3, 4,5 and 6
//Half-Open Range    This (i..< j) defines i range that starts from I up to j, but does not include j. .< 6 gives 1, 2, 3, 4 and 5

///Unary and Ternary Operators
//Unary operators act on a single operand (like ! to negate a boolean).

//The ternary conditional operator condition ? a : b chooses between two values.

//Example
let flag = false
print(!flag)              // unary NOT
let score = 85
let label = (score >= 90) ? "A" : "Not A"
print(label)

///Operator Precedence
//Operator precedence determines evaluation order.
//
//Multiplication comes before addition; && before ||.
//
//Use parentheses to control order.
//
//Control order of evaluation with precedence
//Understand how operators are prioritized and add parentheses to make evaluation order explicit when needed.
//
//Example
print(2 + 3 * 4)
print((2 + 3) * 4)
print(true || false && false)
print((true || false) && false)

//Boolean Precedence
//&& is evaluated before ||. Use parentheses to clarify intention.
//
//Example
let abc = true
let bbc = false
let cbc = true

print(abc || bbc && cbc)         // true (&& before ||)
print((abc || bbc) && cbc)       // true
print(abc && bbc || cbc)         // true ((a && b) || c)
