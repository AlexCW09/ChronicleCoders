//
//  Chapter2.swift
//  CLIStoryTemplate
//

import Foundation
//The parts of chapter 2 that require user input
var notProceedToChapter2 = true
var concludeChapter2 = true
var decidingFork = true

enum Place
{
    case house
    case village
    case kingdom
}

enum StoryOutline
{
    case intro
    case upstairs
    case baseFloor
    case killTheOldMan
    case apprehendTheOldMan
    case conclusion
}

func chapterTwo()
{
    //Loop until user is ready to read the 2nd chapter
    while(notProceedToChapter2)
    {
        print("\nChapter 2 proceed? (y/n)")
        if let userDecision = readLine()
        {
            if userDecision == "y"
            {
                //Read chapter 2
                showStory(whereAt(.intro))
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
    //Chapter 2 1st fork go upstairs or stay on base floor
    while(exploreUpstairs)
    {
        print("\nDo you want to explore upstairs or the base floor? (y for upstairs, n for base floor)")
        if let userDecision = readLine()
        {
            if userDecision == "y"
            {
                showStory(whereAt(.upstairs))
                exploreUpstairs = false
            }
            else if userDecision == "n"
            {
                showStory(whereAt(.baseFloor))
                exploreUpstairs = false
            }
            else
            {
                print("Invalid input")
            }
        }
    }
    
    //Chapter 2 2nd fork kill the old manor apprehend him
    while(doWeKillTheOldMan)
    {
        print("\nAs the old man is distracted, \(mainCharacter.name) had to decide whether try to kill the old man or try to apprehend him. (y for kill, n for apprehend)")
        if let userDecision = readLine()
        {
            if userDecision == "y"
            {
                showStory(whereAt(.killTheOldMan))
                doWeKillTheOldMan = false
            }
            else if userDecision == "n"
            {
                showStory(whereAt(.apprehendTheOldMan))
                doWeKillTheOldMan = false
            }
            else
            {
                print("Invalid input")
            }
        }
    }
    //The exciting conclusion to chapter 2
    while(concludeChapter2)
    {
        print("\nRead the exciting conclusion to chapter 2? (y/n)")
        if let userDecision = readLine()
        {
            if userDecision == "y"
            {
                //Read conclusion to chapter 2
                showStory(whereAt(.conclusion))
                concludeChapter2 = false
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
    
}

func whereAt(_ location: StoryOutline) -> [String]
{
    var story: Chapter2Story = Chapter2Story()
    
    switch location
    {
        case .intro:
            return story.intro
        case .upstairs:
            return story.upstairs
        case .baseFloor:
            return story.baseFloor
        case .killTheOldMan:
            return story.killTheOldMan
        case .apprehendTheOldMan:
            return story.apprehendTheOldMan
        case .conclusion:
            return story.conclusion
    }
}

func showStory(_ story: [String])
{
    for paragraph in story
    {
        print(paragraph)
        //sleep(1)
    }
}
