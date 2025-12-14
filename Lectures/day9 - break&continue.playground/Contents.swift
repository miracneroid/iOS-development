import UIKit

//Swift Break/Continue
//Use break to exit a loop early, and continue to skip to the next iteration.
//
//break
//Stop the loop immediately when a condition is met.
//
//Example
for i in 1...10 {
  if i == 4 { break }
  print(i)
}

//continue
//Skip the rest of the current iteration but keep looping.
//
//Example
for i in 1...5 {
  if i % 2 == 0 { continue }
  print(i) // only odd numbers
}
