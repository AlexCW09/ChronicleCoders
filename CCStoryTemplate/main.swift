//
//  main.swift
//  CLIStoryTemplate
//

import Foundation
// Creating variables and constants for people/decisions in the story
var choice: Bool = true
// User Info
var name: String = ""
var gender:String = ""
// Chapter 1 Decisions
var stayInBed: Bool = true
// Chpater 2 Decisions
var respectServants: Bool = true
// Chpater 3 Decisions
var kingAlive: Bool = true
var momAlive: Bool = true
// Chpater 4 Decisions
var tellTruth: Bool = true
var chaseBoy: Bool = true
// Chpater 5 Decisions

// Chpater 6 Decisions

// Chpater 7 Decisions


// Taking user's name as an input, changing global variable in main function
print("Enter your name: ")
if let user = readLine() {
    name = user
}

// Recieves gender from user and assigns prince, princess or defaults to their name
while(choice){
    print("Enter you gender (ONLY CHOOSE male, female, nonbinary): ")
    if let gend = readLine() {
        gender = gend
        if (gender == "male") {
            gender = "prince"
            choice.toggle()
        } else if (gender == "female") {
            gender = "princess"
            choice.toggle()
        } else if (gender == "nonbinary") {
            gender = name
            choice.toggle()
        } else {
            print("Invalid input!")
        }
    }
}
choice.toggle()

func readStory() {
    chapterOne()
    chapterTwo()
    chapterThree()
    chapterFour()
    chapterFive()
    //chapterSix()
    //chapterSeven()
}

readStory()
