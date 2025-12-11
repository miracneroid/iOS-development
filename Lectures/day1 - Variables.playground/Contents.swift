import UIKit

// Variables -> Varaibels act as storage boxes to in code to store data. We uses var keyword to initiate a variable
var greeting = "Hello, playground"
print(greeting)

// We can intialize a variable in two manners, either by specifiying it's data types and sometimes direclty like in the above example -> greeting variable

// When we specified the data type of that variable we cannot change it's value by any other data type, we can change it by same data type.

// String type variables, this type of variable only takes a string value
var name: String = "Ayush Srivastava"
print(name)

// name = 28 // this will show error as the data type of the name variable is fix to string we can only change it's value by assigning a string type data

name = "Divyanshi Ayush Srivastava" // this will not give any error, also after this instance every time we call name var it will return Divyanhi Ayush Srivastava instead of Ayush Srivastava

// Integer type variables, this type of variable only takes a integer value
var age: Int = 22
print(age)

// Floating type variables, this type of variable only takes a floating value
var dob: Float = 28.05000000000
print(dob)

// difference between flaot and double is just that flaot show upto 6 digit and double takes upto 11 digits in total in output
// like running dob it will return 28.0500 i.e 6 values and running below dobs will return 28.052002000 i.e 11 values

// Double type variables, this type of variable only takes a double value
var dobs: Double = 28.05200200000
print(dob)

// Boolean type variables, this type of variable only takes a boolean value
var alive: Bool = true
print(alive)

// Let is also are used to describe a variable, but the constant once, if we declare a variable using the let keyword, then the value stored inside it cannot be changed at any instance. Once declared will remain constant throught the program.
let location: String = "Prayagraj"

var state = "Uttar Pradesh"
print(state)

let country = "India"
// country = "Australia" // this will pop up an error as country is a constant type variable and it's value cannot be changed
print(country)

// Type Interference -> Type interference happens when we do not define the type of data that particular variable will hold, then based on the value saved inside it the compiler automatically defines it's type will converting the HHL code into MLL code.

var new_name = "ayush"
var number = 234.23424234 // if i would have written less than 6 digit in total it would have been a float datatype but it's more so compiler took it as double data type.

// Let's perform some operations on variables
print(new_name.uppercased()+" (the uppercase function is used here)") // .uppercase() is a function used to make the strings goes to upper case, just for that instance, it won't modify the original variable.
print(new_name + " (without uppercase function)")

// Leaving u on suspense what + and String is doing we'll catch up on this in next lecture or maybe next to next

// Sayonara
