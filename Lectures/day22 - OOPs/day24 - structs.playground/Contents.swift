import UIKit

//Swift Structs or Structures

// The easiest way to understand structures is that they gives us power to set ourself free from getting stucked with pre-defined data types and have our own data types based on our needs, our demand. In my imagination structures help you build your own wolrd, your own building blocks of codes and everything, and it excites me most.

// Let me demonstrate it to you. let's say I need something on calling that holds all the piece of my information my person details ->
struct Details {
    var firstname: String
    var lastname: String
    var age: Int
    var price: String = "$10" // a little trick to be known is that if there's something that goes common for all, let's say price of all the items it 10 rupees then we can jsut simply assign the value of it once in there like var price: String = "$10", once and then we don't have to define it at every new instance of MenuItem we create, we have to deal with name and price only, bcuz we set a default value to price now, which will be same for all the items
    func adultMinorReader(n : Int) -> String{
        age >= 18 ? "adult" : "minor"
    }
    var myLinkings: [String:Any] = [:]
}

// Well now we can see that we have all details containing containers inside struct Details which is our own created datatype, as we can see it's not a function, it's not a class, it's not a variable or it's even not a variable constant, also it's not being driven by any conditional staments, what we see here is our own creation a custom build data type that has all other kinds of data in it. Now the question arrises how to make use of it?

var AyushDetails = Details(firstname: "Ayush", lastname: "Srivastava", age: 84)
AyushDetails.myLinkings["hobby"] = "Coding"
AyushDetails.myLinkings["city"] = "Pune"

print(AyushDetails, "\n")
print(AyushDetails.myLinkings, "\n")
print(AyushDetails.adultMinorReader(n: AyushDetails.age), "\n")

var AdityaDetails = Details(firstname: "Aditya", lastname: "Srivastava", age: 14)
AyushDetails.myLinkings["hobby"] = "cycling"
AyushDetails.myLinkings["city"] = "New York"
print(AdityaDetails, "\n")
print(AdityaDetails.myLinkings, "\n")
print(AdityaDetails.adultMinorReader(n: AdityaDetails.age), "\n")

// Let's move ahead to a more technical explanation. In the end I alway present a technical defination of the same thing that i explained to you in lamen way, it's because when you are in a tech industry, it's expected from you that you use to technical terms have understanding of technical terms. that's i give both lamen explanations for your understandings, and technical for your to lead the race.

//Define lightweight value types with stored properties and memberwise initializers.
//
//Structs are copied on assignment and passing.
//
//Define a Struct
//Create a struct with stored properties and memberwise initializers, then instantiate and call methods on the instance.
//
//Example
struct Point { var x: Int; var y: Int }
var p1 = Point(x: 1, y: 2)
var p2 = p1 // copy
p2.x = 10

//Structs are copied on assignment and passing, so mutations on one reference do not affect the other.

//Swift Class vs Struct
//Choose value semantics (struct) for simple data and reference semantics (class) for shared identity, inheritance, or Objective-C interop.
//
//Key Differences
//Copying: Structs copy on assignment and passing; classes pass references.
//Inheritance: Classes support inheritance; structs do not.
//Identity: Classes have identity semantics; structs compare by value (when Equatable).
//Example
class Counter { var value = 0 }

var p3 = Point(x: 1, y: 2), p4 = p3 // copy
p4.x = 9 // p1.x remains 1

let c1 = Counter(), c2 = c1 // same instance
c2.value = 7 // c1.value is 7
