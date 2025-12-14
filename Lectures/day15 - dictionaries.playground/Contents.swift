import UIKit

// let's hop on dictionaries, not the one we use to find the meaning of words, but the one where we gonna hook a key with the item and be using these keys to access it

var person = [
    "first" : "Taylor",
    "middle" : "Alison",
    "last" : "Swift",
    "month" : "December",
    "website" : "taylorswift.com"
]

// that's how we make dictionaries, and to access them unlike in array we do not need to worry about there index values, instead we can access the items simply by calling the keys we assigned to these items. Let's have a look

person["first"]
person["month"]
person["website"]

//Iterate Keys and Values
//Loop through a dictionary to access keys and values.
//
//Example
let ages = ["Kai": 30, "Elisabeth": 25]
for k in ages.keys.sorted() {
  print("\(k): \(ages[k]!)")
}
