//
//  Chapter1.swift
//  CLIStoryTemplate
//

import Foundation
import SwiftUI


func chapterOne() {
    
    introToStory()
    
    
}


func introToStory() {
    print("\n     Once upon a time, there was a kid that was being attacked by a monster of the night. Just as the kid thought he was done for, a mysterious person appeared and effortlessly defeated the monster. To show gratitude, the kid decided to give the mysterious person a meal. As they were sitting around the campfire, they were silent. Then, the kid asked the mysterious person to tell a story. The mysterious person was hesitant at first, but the kid begged and begged so the mysterious person agreed. In a raspy and broken voice, the mysterious person started to tell a tale about a \(gender) named \(name) with a heart of an adventurer and was the heir of the throne. By day, they would train their swordsman’s skill and by night, they would sneak in the royal library to read books about the unknown world behind the walls and the history of the kingdom. Unfortunately, pages were ripped out of some of the books.")
}
 

func stayInOrLeaveRoom() {
    print("Do you want to leave your bed to go adventure? (y / n)")
    if let userDecision = readLine() {
        if userDecision == "y" {
            stayOrLeave = true
        }
        else if userDecision == "n" {
            stayOrLeave = false
        }
        else {
            print("Invalid input")
        }
    }
    if stayOrLeave {
        print("")
    }
    else {
        print()
    }
}
