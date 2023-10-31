//
//  Chapter2.swift
//  CLIStoryTemplate
//

import Foundation
var notProceedToChapter2 = true

func chapterTwo()
{
    //Loop until user is ready to read the 2nd chapter
    while(notProceedToChapter2)
    {
        print("Chapter 2 proceed? (y/n)")
        if let userDecision = readLine()
        {
            if userDecision == "y"
            {
                //Read chapter 2
                startOfChapterTwo()
                notProceedToChapter2 = false
            }
            else if userDecision == "n"
            {
                print("Read at a your leisure.")
            }
            else
            {
                print("Invalid input")
            }
        }
    }
    //Chapter 2 fork
    print("Do you wan to release your anger on your servants? (y/n)")
    if let userDecision = readLine()
    {
        if userDecision == "y"
        {
            chapterTwoForkYes()
        }
        else if userDecision == "n"
        {
            chapterTwoForkNo()
        }
        else
        {
            print("Invalid input")
        }
    }
    print("The Servants would remember how \(name) would treat them.")
}

func startOfChapterTwo()
{
    let chapterTwoIntro = ["When they had grown old enough, \(name) would go on adventures and complete quests every day.", "They would complete tasks from the villagers of slaying monsters, finding missing people, rebuilding damaged building and more.", "They wished the king would accompany them on their adventures to showcase their skills and make the king proud.", "Unfortunately, the king would always decline \(name)’s request leaving them in a bad mood.", "When \(name)’s servants asked if they were doing well"]
    
    for sentence in chapterTwoIntro
    {
        print(sentence)
        sleep(2)
    }
}

func chapterTwoForkYes()
{
    print("This would lead them to treat their servants with disrespect.")
}
func chapterTwoForkNo()
{
    print("This would lead them to treat their servants with respect.")
}
