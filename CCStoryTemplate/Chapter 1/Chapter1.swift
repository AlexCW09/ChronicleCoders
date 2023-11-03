

import Foundation
import SwiftUI

// Next chapter function
func nextChapter(chNum: Int){
    var isValidChoice = false
    while !isValidChoice{
        print("Chapter 2 proceed? (y/n)")
        if let userDecision = readLine(){
            if userDecision == "y" {
                isValidChoice.toggle()
            } else if userDecision == "n" {
                print("Read at a your leisure.")
            } else {
                print("Invalid input")
            }
        }
    }
}
// Function for options
func Choice(choices: [String])->Bool {
    var isValidChoice = false
    var storyBool = true
    while !isValidChoice{
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
// Function to print story with time delay
func showStory(story: [String]) {
    for sentence in story {
        print(sentence)
        sleep(0)
    }
}
// Chapter 1 story elements
struct Chapter1Story {
    let intro = ["\nIn a world cloaked in moonlight, a tale of bravery and mystery unfolded. It began in a village nestled beneath the sprawling canopy of ancient trees, where whispers of monsters lurking in the shadows sent shivers down the spines of the villagers.", "\nOne fateful evening, under the eerie glow of the full moon, a child found themselves in a perilous predicament, ensnared by a creature that seemed to have leaped straight from a nightmare. Its eyes glowed with malevolence, and its snarling maw dripped with venom. The child's heart pounded with terror, and they could see no escape from the monstrosity that loomed over them.", "\nJust as hope seemed to wane, a figure, draped in shadows and cloaked in mystery, emerged from the forest's depths. Their movements were fluid and graceful, as if they were one with the night. With a flick of their wrist and a flash of steel, they dispatched the monster with an otherworldly grace, as if they were born for such battles.", "\nThe child gazed in awe at their savior, their heart overflowing with gratitude for this enigmatic hero. In the warmth of a campfire's glow, they shared a simple meal together, yet the air remained heavy with the weight of the unspoken.", "\nSensing the tension, the child broke the silence, their voice trembling like the leaves in the night breeze. 'Please,' they implored, 'tell me a story. Anything to fill this silence.'", "\nThe mysterious person hesitated, their eyes revealing a lifetime of secrets. But the child's yearning eyes were impossible to resist. Finally, the enigmatic figure agreed, their voice like the whisper of the wind through leaves.", "\nIn a raspy and broken voice, they began to weave a tale of a kingdom shrouded in both splendor and shadows. In the golden age of this land, laughter echoed through the streets, and joy was abundant. But there was a dark underbelly – magic was considered a malevolent force, a curse upon the kingdom, and its use was punishable by death.", "\nIn this kingdom, there lived a young \(mainCharacter.gender[0])\(mainCharacter.name), whose heart brimmed with the spirit of an adventurer. By day, they honed their skills with the sword, destined to inherit the throne. By night, they were a clandestine scholar, sneaking into the royal library to uncover the secrets of the world beyond the castle walls and the hidden history of their realm. Yet, a shadow loomed over their quest for knowledge, for pages from the books detailing the history of magic had been torn away.", "\nThe story took a twist as the enigmatic storyteller recounted the eve of \(mainCharacter.name)'s impending birthday, where their heart raced with anticipation. Darkness shrouded the kingdom, and within \(mainCharacter.name)'s chest, a storm of possibilities and secrets swirled, ready to unfurl in a world where magic was both a forbidden dream and a haunting reality.\n", "Do you want to leave your bed to go adventure into the night? (y/n)"]
    let stayBed = ["\(mainCharacter.gender[1])\(mainCharacter.name) decided to stay in their bed and let the mysterious events of the night pass without further involvement. The events beyond their chamber remained shrouded in obscurity, and the desire for a peaceful night's sleep outweighed their curiosity.\n", "Under the gentle watch of the full moon, \(mainCharacter.name) drifted into slumber, leaving the enigmatic occurrences of the night to the realm of dreams and the mysteries of the morrow.\n"]
    let leaveBed = ["\n\(mainCharacter.gender[1])\(mainCharacter.name) decided to go to the library to get more reading in, driven by an insatiable curiosity. The moonlight painted a silver path on the castle floors, guiding \(mainCharacter.name) through the labyrinthine corridors. As they walked towards the library, a peculiar sound piqued their interest.\n", "Upon reaching the source of the noise, \(mainCharacter.name) found themselves in a dimly lit hallway, shadows dancing in the corners. A group of castle guards stood, huddled and speaking in hushed tones. The conversation was intense, their faces contorted with frustration.\n", "While observing, \(mainCharacter.name) noticed something unsettling. One of the guards held a bundle of papers, and as they gesticulated passionately, pages fluttered to the floor. The papers were worn, their edges jagged, and their contents hidden from view. Something about this encounter felt all too familiar, as though they had stumbled upon a piece of the very mystery that had eluded them in the library.\n", "Suddenly, one of the guards glanced in (name)'s direction, their eyes locking onto \(mainCharacter.name). Panic surged through (name), and in that instant, \(mainCharacter.name) made a swift decision to retreat, turning and fleeing back to their room.\n", "Back within the safety of their chamber, \(mainCharacter.gender[0])\(mainCharacter.name) found it impossible to sleep. They lay awake, mind racing, questioning what they could have possibly seen. The torn pages, the whispered conversation, and the familiar figure all tugged at the strings of an enigmatic web, and \(mainCharacter.name) couldn't help but wonder what secrets they were about to uncover.\n"]
}
func chapterOne() {
    let story = Chapter1Story()
    showStory(story: story.intro)
        stayInBed = Choice(choices: ["y","n"])
        if !stayInBed{
            showStory(story: story.stayBed)
        } else {
            showStory(story: story.leaveBed)
        }
}
