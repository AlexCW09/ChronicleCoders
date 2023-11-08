//
//  main.swift
//  CLIStoryTemplate
//
import Foundation
struct Character {
    var name: String
    var gender: [String]
    func pStatusTitle()->String{
        guard kingDead != nil else{
            return "father"
        }
        return "mother"
    }
    func parentalStatus()->String{
        guard kingDead != nil else{
            return "King"
        }
        return "Queen"
    }
}
// Creating variables and constants for people/decisions in the story
var choice: Bool = true
// User Info
var mainCharacter = Character(name: "", gender: [""])
var arsenal: String = ""
// Story Decisions
// Chapter 1 Decisions
var stayInBed: Bool = true
// Chpater 2 Decisions
var exploreBaseFloor: Bool = true
var exploreUpstairs = true
var doWeKillTheOldMan = true
var attackOldMan: Bool = true
var respectServants: Bool = true
// Chpater 3 Decisions
var kingStays: Bool = true
var kingDead: Bool?
var kingHealed: Bool = true
var momAlive: Bool = true
var tellTruth: Bool = true
var chaseBoy: Bool = true
// Chpater 4 Decisions
var helpBoy: Bool = true
var betrayParent: Bool = true
var forgiveMagicUsers: Bool = true
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
func userDecision(choices: [String]) -> Bool {
    var isValidChoice = false
    var storyBool = false
    while !isValidChoice {
        if let userDecision = readLine() {
            if userDecision == choices[0] {
                storyBool = true
                isValidChoice.toggle()
            }
            else if userDecision == choices[1] {
                storyBool = false
                isValidChoice.toggle()
            }
            else {
                print("Invalid option!\nTry again!\n")
            }
        }
    }
    return storyBool
}

func showStory(_ story: [String])
{
    for paragraph in story
    {
        print(paragraph)
        sleep(10)
    }
}

func readStory() {
    chapterOne()
    chapterTwo()
    chapterThree()
    chapterFour()

}
readStory()
