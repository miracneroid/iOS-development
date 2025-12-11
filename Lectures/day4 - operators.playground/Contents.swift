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

// We had fun session quick mind active sessions, let's get stick to some structure now -> Starting with
//Arithmetic Operators
//Assignment Operators
//Comparison Operators
//Logical Operators
//Bitwise Operators
//Misc Operators
//Range Operators
//
//Swift supports the four standard arithmetic operators for all number types:
//
//Operators    Description
//+    Addition
//-    Subtraction
//*    Multiplication
//    Division
//%    Modulus
//++    Increment
//−−    Decrement
//They are used to assign values to variables. These are:
//
//Operators    Description
//=    Assign
//+=    Increments then assign
//-=    Decrements then assign
//*=    Multiplies then assign
// =    Divides then assigns
//%=    Modulus then assigns
//Operators    Description
//==    Is equal to
//!=    Is not equal to
//>    Greater than
//<    Less than
//>=    Greater than or equal to
//<=    Less than or equal to
//Operators    Description
//&&    And operator. Performs logical conjunction on two expressions
//(if both expressions evaluate to True, result is True. If either expression evaluates to False, the result is False)
//||    Or operator. Performs a logical disjunction on two expressions
//(if either or both expressions evaluate to True, the result is True).
//!    Not operator. It performs logical negation on an expression.
//Operators    Description
//&    Binary AND Operator
//|    Binary OR Operator
//^    Binary XOR Operator
//<<    Binary Left Shift Operator
//>>    Binary Right Shift Operator
//The conditional Operator cones under this category. The structure is: Condition? X : Y, i.e., If Condition is true? Then 1st expression: Otherwise 2nd Expression All the above operators are common in C also and most of the C or C++ programmers are familiar with these operators. But Swift adds another type of operators that is called Range Operators which are shortcuts for expressing a range of values. They are of two types:
//
//Operators    Description
//Closed Range    This (x...y) defines x range that starts from x up to y, and includes the values x and y and the values in between. ..6 gives 1, 2, 3, 4,5 and 6
//Half-Open Range    This (i..< j) defines i range that starts from I up to j, but does not include j. .< 6 gives 1, 2, 3, 4 and 5

