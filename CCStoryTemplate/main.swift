//
//  main.swift
//  CLIStoryTemplate
//

import Foundation

var name = ""
var gender: String
var stayOrLeave: Bool

// Creating variables and constants for people/decisions in the story

//Taking user's name as an input, changing global variable in main function
print("Enter your name: ")
if let user = readLine() {
    name = user
}
//recieves gender from user and assigns prince, princess or defaults to their name
print("Enter you gender (ONLY CHOOSE male, female, nonbinary): ")
if let gend = readLine() {
    gender = gend
    if (gender == "male") {
        gender = "prince"
    } else if (gender == "female") {
        gender = "princess"
    } else if (gender == "nonbinary") {
        gender = name
    }
} else {
    print("Invalid input")
}

func readStory() {
    chapterOne()
    print("Ready to go to the next chapter? (y / n)")
    if let input = readLine() {
        if input == "y" {
            chapterTwo()
        }
    }
    
    chapterThree()
    chapterFour()
    chapterFive()
}

readStory()
