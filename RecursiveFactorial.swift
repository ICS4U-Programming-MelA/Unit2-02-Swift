// Copyright (c) 2022 Mel Aguoth All rights reserved.
//
// Created By: Mel Aguoth
// Date: January 18, 2022
// This program calculates a factorial using recursion.

// Import modules.
import Foundation

func factorial(calcInt: Int) -> Int {

  // Declare variables.
  let tempInt = calcInt

  // If the user's number is equal to 1, return 1.
  if tempInt == 1 {
    return 1

  // If the user's number is anything else, recurse it.
  } else {
    return tempInt * factorial(calcInt: tempInt - 1)
  }
}

// Introduce the program.
print("This program calculates and displays the factorial of a given integer using recursion.")

// Get the user's integer.
print("Enter an integer:", terminator: " ")
let userString: String = readLine() ?? ""
let userInt: Int = Int(userString) ?? 0

// If the user's input isn't an integer, display an error to the user.
if userInt == 0 {
  print("\n" + "'\(userString)' isn't an integer. Please enter a proper integer.")

// If the user's integer isn't above 0, display an error to the user.
} else if userInt < 1 {
  print("\n" + "\(userInt) isn't above 0. Please enter an integer above 0.")
} else {

  // Call factorial.
  let answer: Int = factorial(calcInt: userInt)

  // Display the factorial.
  print("\n" + "\(userInt)! is: \(answer)")
}
