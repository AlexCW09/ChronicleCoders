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
    let intro = ["\nOnce upon a time, there was a child that was being attacked by a monster during the full moon.", "As the child thought he was done for, a mysterious person appeared and effortlessly defeated the monster.", "To show gratitude for saving his life, the child decided to give the mysterious person a meal.", "As they were sitting around the campfire, they were silent.", "To break the awkward silence, the child asked the mysterious person to tell a story.", "The mysterious person was hesitant at first, but the kid begged and begged so the mysterious person agreed.", "In a raspy and broken voice, the mysterious person started to tell a tale about a kingdom that was in its golden age and was full of joy and laughter.", "However, magic was seen as the root of evil and forbidden throughout the land.", "If anyone was sighted using magic of any sort, the punishment would be execution. In this kingdom, there was a p\(gender) named \(name) with a heart of an adventurer and was the heir of the throne.", "By day, they would train their swordsman's skill and by night, they would sneak in the royal library to read books about the unknown world behind the walls and the history of the kingdom.", "Unfortunately, pages were ripped out of some of the books containing the history of magic.", "The night before \(name) birthday, they were too anxious to sleep.", "Do you want to leave your bed to go adventure?"]
    
    for sentence in intro {
        print(sentence)
        sleep(3)
    }

}


func stayInOrLeaveRoom() -> Bool {
    while (choice) {
        if let userDecision = readLine() {
            if userDecision == "y" {
                stayInBed  = true
                choice.toggle()
            }
            else if userDecision == "n" {
                stayInBed  = false
                choice.toggle()
            }
            else {
                print("Invalid input")
            }
        }
    }
    return stayInBed
}


    func decision() {
        if stayInOrLeaveRoom() {
            print("\n     P\(gender) \(name) decided to go to the library to get more reading in, however they came across some suspicious activity while walking to the library containing info about kingdom and magic.")
            sleep(2)
            print("While observing, they noticed ripped pages in one of the guards hands talking to a familiar figure yelling at them.")
            sleep(2)
            print("Suddenly, one of the guards looked at \(name)'s direction causing \(name) to run back to his room.")
            sleep(2)
            print("\(name) was struggling to sleep due to them questioning what they could have possibly have seen")
        }
            else {
                print("P\(gender) \(name) decided to stay in their bed and slept through the night")
            }
        }
    
    
    
    

