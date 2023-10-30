//
//  Chapter2.swift
//  CLIStoryTemplate
//

import Foundation
var notProceedToChapter2 = true

func chapterTwo() {
    while(notProceedToChapter2)
    {
        print("Chapter 2 proceed? (y/n)")
        if let userDecision = readLine() {
            if userDecision == "y" {
                startOfChapterTwo()
                notProceedToChapter2 = false
            }
            else if userDecision == "n" {
                print("Read at a your leisure.")
            }
            else {
                print("Invalid input")
            }
        }
    }
}

func startOfChapterTwo()
{
    print("When they had grown old enough, \(name) would go on adventures and complete quests every day. They would complete tasks from the villagers of slaying monsters, finding missing people, rebuilding damaged building and more. They wished the king would accompany them on their adventures to showcase their skills and make the king proud. Unfortunately, the king would always decline \(name)’s request leaving them in a bad mood.")
}
