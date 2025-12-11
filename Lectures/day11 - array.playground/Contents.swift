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

var list = ["Ayush", "Srivastava", "22", "Boston", "Middle East", "Asia Paccific", "Moon"]
print(list)

// You noticed that we saved only one kind of data in the array/list i.e String, what if we want to add multiple types of data?
// For that we need to manually describe that this particualr array/list can accept data of any type. If we'll not then the data type we entered first in the array/list will be the default datatype of that array/list

var list1: [Any] = ["Ayush", "Srivastava", 22, 342.34, true, "Boston", "Middle East", "Asia Pacific", "Moon"]
print(list)

// These are two way of organizing your code, the syntax is one only variable_name = [] , i.e create a variable and then assign square brackets to it [], and boom array/list is initialized and ready to use.

// Point to notice -> One is created using var and the other is created using let, we already know that variable created using var are mutable types and let are immutable types as they become constants right after initiaizing them. But hey does that means we can have some fun with list variabels, since it's of mutable type. But I'm not up for the boring method like we use to do with variabels. Let's find out

// Can I add more data to the list vairable? Answer is yes. But how? For that ->
// Call the array/list name and then use append function on it
list.append("Sun")
print(list)

// What if we wish to delete element?
list.popLast()
print(list)

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
