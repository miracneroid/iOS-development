import UIKit

//Swift Deinitializers
//Run cleanup code before a class instance is deallocated using deinit.
//
//deinit
//Deinitializers are called automatically when an instance is deallocated.
//
//Syntax: deinit { ... }
//
//Example
class FileHandle {
  init() { print("open") }
  deinit { print("close") }
}

var h: FileHandle? = FileHandle()
h = nil // prints "close"

//Deinitializers are useful for cleanup tasks like closing files, releasing resources, or removing observers.
