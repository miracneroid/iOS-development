import Foundation

//    Swift Characters
//    Character is one user-visible character.
//
//    Strings are collections of characters.
//
//    Characters and String Length
//    Use Character for single letters.
//
//    Use String.count to get the number of characters.
//
//    Example

let ch: Character = "A"
print(ch)

let word = "Swift"
print(word.count)

//    This prints a character and a string length.
//
//    Characters and String Conversion
//    Convert between Character and String as needed.
//
//    Example

let s = String(ch)
print(s)              // "A"


//Strings
//Strings are text. Use + to join, interpolation with \(value) to insert values, and properties like count and isEmpty to inspect them.
//
//Basics
//Create, combine, and inspect strings with concatenation, interpolation, and common properties.
//
//Example
let s1 = "Hello"
let s2 = "Swift"
print(s1 + " " + s2)
print("\(s1), \(s2)!")
print(word.count)
print(s1.isEmpty)

//    Unicode and Grapheme Clusters
//    Some characters use multiple Unicode scalars but still count as one character.
//
//    Example

let heart: Character = "❤️"
print(heart)

let flag: Character = "🇳🇴" // composed of two regional indicators
print(flag)

print("e\u{301}".count) // 1 (e + combining acute accent)

// String Interpolation is all about how to use a variable as a variable to serve the data it holds inside a string. In python it's often labeled as F-string.

var name = "Ayush Srivastava"

"Hello World. I'm a beginner in iOS and macOS development and my name is \(name)."

// Using a forward slash i.e \ and putting variable inside () gives the value out.

//Substring and Case
//Get substrings with indices. Uppercased/lowercased creates new strings without changing the original.
//
//Example
let text = "Swift"
let start = text.startIndex
let end = text.index(start, offsetBy: 3)
let sub = text[start..<end]  // "Swi"
print(sub)
print(text.uppercased())

//Strings: Concatenation
//Join strings with +, or use interpolation to insert values into a string.
//
//Concatenate vs Interpolate
//Use + to make a new string. Use interpolation to insert values inline.
//
//Example
let first = "Hello"
let second = "Swift"
// Concatenation
print(first + " " + second)
// Interpolation
print("\(first), \(second)!")

//Append Strings
//Use += to append to a mutable string.
//
//Example
var sh = "Hello"
sh += ", Swift"
print(s)

//Strings: Numbers and Strings
//Use string interpolation to mix numbers with text.
//
//Convert numbers to strings explicitly with String(value) when concatenating.
//
//Mix Text and Numbers
//Use interpolation to embed numbers directly in strings, or convert numbers with String(value) when concatenating.
//
//Example
let age = 5
print("Age: \(age)")          // interpolation
let tmext = "You are " + String(age)
print(tmext)
let pi = 3.14
print("pi = \(pi)")

//Convert String to Number
//Use numeric initializers like Int("123") which return optionals because conversion can fail.
//
//Example
let sb1 = "123"
let n1 = Int(sb1)           // Int?
print(n1 ?? 0)

let sb2 = "abc"
let n2 = Int(sb2)           // nil (not a number)
print(n2 == nil)

//Strings: Special Characters
//Use escape sequences inside strings: \n (newline), \t (tab), \" (quote), \\ (backslash).
//
//Escapes
//Escape special characters with backslashes to represent newlines, tabs, quotes, or backslashes themselves.
//
//Example
print("Hello\nSwift")
print("A\tB\tC")
print("\"quoted\"")
print("\\")

//Multiline Strings
//Use triple quotes """ for multiline string literals. Indentation before closing quotes is ignored.
//
//Example
let poem = """
Roses are red,
Violets are blue.
"""
print(poem)

//Strings: Unicode & Scalars
//Swift strings are Unicode-correct.
//
//A single character can be composed of multiple Unicode scalars.
//
//Visually identical strings can compare equal.
//
//Composed Characters
//Some characters are made from multiple Unicode scalars; Swift treats them as a single character for comparison and length.
//
//Example
let e1 = "é"
let e2 = "e\u{301}"   // e + COMBINING ACUTE ACCENT
print(e1 == e2)
print(e2)
//
//Unicode Scalars
//Inspect the underlying Unicode scalar values with the unicodeScalars view.
//
//The unicodeScalars view yields values of type UnicodeScalar.
//
//Example
let sn = "e\u{301}"
for scalar in sn.unicodeScalars {
  print(scalar.value)   // 101, 769
}


