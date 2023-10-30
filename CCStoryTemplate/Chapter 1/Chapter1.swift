//
//  Chapter1.swift
//  CLIStoryTemplate
//

import Foundation
import SwiftUI

var sleepOrNot = false


func chapterOne() {
    introToStory()
    decision()
}

func introToStory() {
    //list of sentences in intro
    let intro = ["\n    Once upon a time, there was a kid that was being attacked by a monster of the night.", "Just as the kid thought he was done for, a mysterious person appeared and effortlessly defeated the monster.", "To show gratitude, the kid decided to give the mysterious person a meal.", "As they were sitting around the campfire, they were silent.", "Then, the kid asked the mysterious person to tell a story.", "Just as the kid thought he was done for, a mysterious person appeared and effortlessly defeated the monster.", "To show gratitude, the kid decided to give the mysterious person a meal.", "As they were sitting around the campfire, they were silent. Then, the kid asked the mysterious person to tell a story.", "The mysterious person was hesitant at first, but the kid begged and begged so the mysterious person agreed.", "In a raspy and broken voice, the mysterious person started to tell a tale about a p\(gender) named \(name) with a heart of an adventurer and was the heir of the throne.", "By day, they would train their swordsman’s skill and by night, they would sneak in the royal library to read books about the unknown world behind the walls and the history of the kingdom.", "Unfortunately, pages were ripped out of some of the books.", "\nDo you want to leave your bed to go adventure? (y / n)"]
    
    for sentence in intro {
        print(sentence)
        sleep(2)
    }


}


 
func stayInOrLeaveRoom() -> Bool {
    if let userDecision = readLine() {
        if userDecision == "y" {
            stayInBed  = true
        }
        else if userDecision == "n" {
            stayInBed  = false
        }
        else {
            print("Invalid input")
        }
    }
    if stayInBed {
        print("")
    }
    else {
        print()
    }
    return stayInBed
}


    func decision() {
        if stayInOrLeaveRoom() {
            print("\n     P\(gender) \(name) decided to go to the library to get more reading in, however they came across a suspicious activity while walking to the library containing info about kingdom and magic. While observing, they noticed ripped pages in one of the guards hands talking to a familiar figure yelling at them. Suddenly, one of the guards looked at \(name)'s direction causing \(name) to run back to his room. \(name) was struggling to sleep due to them questioning what they could have possibly have seen")
            if stayInBed {
                print("")
            }
            else {
                print("P\(gender) \(name) decided to stay in their bed and slept through the night")
            }
        }
    }
    
    
    

