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

// difference between flaot and double is just that flaot takes upto 6 digit after decimal and double takes upto 11 digits

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

// Functions in porgramming is like learning a new skill, once you learnt how a work is done, next time they just need to tell you the work instead of telling the whole process again and again just like that function works. Inside the function code block we write some set of code that perform a particular task everytime we call a function by it's name.

func printString(){
    let String1 = "Name: Ayush Srivastava"
    print(String1)
}

printString() // the above function a string printing function it will print String everytime it's being called like that.
printString()

// Like in real life once we learnt things we try to find new ways to perform the same task like making coffee, sometime we add coffee in milk in starting only and sometime when milk is fully boiled like wise we can also do things with functions in code.

// In the previous instance we defined the varaible inside the function, then printed it's value, but what if we wish to print a variable that's outside the function scope block? or we wanna take input from the user? For that we define a variable and it's type in the function argument area, and then we pass a value in that variable to get output.

func printOutsideVariable(n: String){
        print(n)
}

printOutsideVariable(n: "Namaste")

// What if we wish for more than one variable, here we go ->

func details(name: String, age: Int, city: String, state: String, country: String){
    print(name, age, city, state, country)
}

details(name: "Ayush Srivastava", age: 22, city: "Prayagraj", state: "Uttar Pradesh", country: "India")

// Sometimes it happens that we know the form of the output, like if we making tea or coffee it's liquid, we cooking rice it's solid, we boiling water it will be converted into gas, likwise when somtimes we make function we know the output's data-type so we declare it while creating the function only that this particular function will return some specific datatype.

func returnInteger(a: Int, b: Int) -> Int{
    var sum = a + b
    return sum
}

print(returnInteger(a: 2, b: 5))

// we can do that in more other ways one like ->

func returnIntegerWithMoreDescriptiveNames(firstNum a: Int, secondNum b: Int) -> Int{
    var sum = a + b
    return sum
}

print(returnIntegerWithMoreDescriptiveNames(firstNum: 12, secondNum: 18))

// if you are familar to other programming langauges and be like in other programming langauges, we need to define the parameteres while initializing the function not while calling it, so i have one more way for you for that we can do is ->

func functionWIthNoParameterCall(_ a: Int, _ b: Int) -> Int{
    var sum = a + b
    return sum // In swift we can only use return keyword if we have already specifed the type of output this function will return.
}

print(functionWIthNoParameterCall(18,2))

 
