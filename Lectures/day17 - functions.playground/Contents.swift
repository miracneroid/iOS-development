import UIKit

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

//Parameters and Return Values
//Use func to define a function with multiple parameters and a return value.
//
//Syntax:

//func name(param1: Type, param2: Type) -> Return

//Multiple params: Separate by commas; annotate types.
//Parameter labels: External names shown at call sites; use _ to omit.
//Return type: Use ->; omit for Void.
//Example
func add(_ a: Int, _ b: Int) -> Int { a + b }
print(add(2, 3))

//Inout, Default Values, Variadics
//Use func to define a function with multiple parameters and a return value.
//
//Syntax:
//
//func name(param: inout Type, default: Type = value)
//func name(param: Type...)
//Example
func increment(_ value: inout Int, by step: Int = 1) {
  value += step
}
var x = 10
increment(&x)
print(x) // 11

func sum(_ nums: Int...) -> Int { nums.reduce(0, +) }
print(sum(1,2,3))
