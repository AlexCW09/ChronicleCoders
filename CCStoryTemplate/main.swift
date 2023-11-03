//
//  main.swift
//  CLIStoryTemplate
//
import Foundation
struct Character {
    var name: String
    var gender: [String]
}
// Creating variables and constants for people/decisions in the story
var choice: Bool = true
// User Info
var mainCharacter = Character(name: "", gender: [""])
// Story Decisions
// Chapter 1 Decisions
var stayInBed: Bool = true
// Chpater 2 Decisions
//var exploreBaseFloor: Bool = true
var exploreUpstairs = true
//var doWeKillTheOldMan = true
var attackOldMan: Bool = true
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
    mainCharacter.name = user
}
// Recieves gender from user and assigns prince, princess or defaults to their name
while(choice){
    print("Enter you gender:\n1: male\n2: female\n3: nonbinary")
    if let gend = readLine() {
        let gender = gend
        if (gender == "1") {
            mainCharacter.gender = ["prince ","Prince "]
            choice.toggle()
        } else if (gender == "2") {
            mainCharacter.gender = ["princess ","Princess "]
            choice.toggle()
        } else if (gender == "3") {
            mainCharacter.gender = ["",""]
            choice.toggle()
        } else {
            print("Invalid input!")
        }
    }
}
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
