import UIKit

//Swift Value Semantics & COW
//Value Semantics & COW
//Prefer value semantics for predictability.
//
//Swift collections use Copy-on-Write (COW) to keep copies cheap until mutation.
//
//Syntax
//var a = [1,2,3]
//
//Arrays, sets, and dictionaries use value semantics.
//
//Copy-on-Write
//Swift collections use Copy-on-Write (COW) to keep copies cheap until mutation.
//
//Example
var a = [1,2,3]
var b = a // shares storage
b.append(4) // triggers copy for b only
print(a) // [1,2,3]
print(b) // [1,2,3,4]

//This example shows that arrays use value semantics and COW.
//
//In the example above, b shares storage with a, but when b.append(4) is called, a copy is made for b only.
//
