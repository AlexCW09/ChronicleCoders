//
//  main.swift
//  CLIStoryTemplate
//

import Foundation

struct Character
{
    var name: String
    var gender: String
}
// Creating variables and constants for people/decisions in the story
var choice: Bool = true
// User Info
var mainCharacter = Character(name: "", gender: "")
var name: String = ""
var gender:String = ""
// Chapter 1 Decisions
var stayInBed: Bool = true
// Chpater 2 Decisions
var exploreUpstairs = true
var doWeKillTheOldMan = true
var respectServants: Bool = true
var exploreBaseFloor: Bool = true
var attackOldMan: Bool = true
// Chpater 3 Decisions
var kingAlive: Bool = true
var momAlive: Bool = true
// Chpater 4 Decisions
var tellTruth: Bool = true
var chaseBoy: Bool = true
// Chpater 5 Decisions

// Chpater 6 Decisions

// Chpater 7 Decisions

//func genChoice(statement: String, choices: [String])->String {
//    var isValidChoice = false
//    while !isValidChoice{
//        print(statement)
//        if let gend = readLine() {
//            gender = gend
//            if(gender==choices[0]){
//                gender = "rince"
//                isValidChoice.toggle()
//            } else if (gender==choices[1]){
//                gender = "rincess"
//                isValidChoice.toggle()
//            } else if (gender==choices[2]){
//                gender = ""
//                isValidChoice.toggle()
//            } else {
//                print("Invalid Option!")
//            }
//        }
//    }
//    return gender
//}

// Taking user's name as an input, changing global variable in main function
print("Enter your name: ")
if let user = readLine() {
    mainCharacter.name = user
}

// Recieves gender from user and assigns prince, princess or defaults to their name
while(choice){
    print("Enter you gender (ONLY CHOOSE male, female, nonbinary): ")
    if let gend = readLine() {
        mainCharacter.gender = gend
        if (mainCharacter.gender == "male") {
            mainCharacter.gender = "rince"
            choice.toggle()
        } else if (mainCharacter.gender == "female") {
            mainCharacter.gender = "rincess"
            choice.toggle()
        } else {
            print("Invalid input!")
        }
    }
}
//choice.toggle()

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
