import Foundation
import SwiftUI


//enum for emotions in story
enum emotions {
    case sad
    case happy
    case scared
    case terrified
    case calm
    case amazement
    case surprised
    case gratitude
    case anxious
    case curious
    case anger
}

//function that defines emotions
func characterEmotion(emotion: emotions) -> [String] {
    switch emotion {
    case .sad, .scared, .terrified:
        return ["terror", "trembling", "raspy", "broken", "Panic"]
    case .happy, .calm, .gratitude:
        return ["satisified", "gratitude", "warmth"]
    case .amazement, .surprised, .anxious, .curious:
        return ["awe", "anticipation", "curiousity"]
    case .anger:
        return ["frustration"]
    }
}
func printName(_ name: String?) {
    guard let unwrappedName = name else {
        print("Hello, young reader! ")
        return
    }
    
    print("Hello \(unwrappedName)!")
}



struct Chapter1Story {
    //introduction to story
    let intro = ["\nIn a world cloaked in moonlight, a tale of bravery and mystery unfolded. It began in a village nestled beneath the sprawling canopy of ancient trees, where whispers of monsters lurking in the shadows sent shivers down the spines of the villagers.", "\n\nOne fateful evening, under the eerie glow of the full moon, a child found themselves in a perilous predicament, ensnared by a creature that seemed to have leaped straight from a nightmare. Its eyes glowed with malevolence, and its snarling maw dripped with venom. The child's heart pounded with \(characterEmotion(emotion: .terrified)[0]), and they could see no escape from the monstrosity that loomed over them.", "\n\nJust as hope seemed to wane, a figure, draped in shadows and cloaked in mystery, emerged from the forest's depths. Their movements were fluid and graceful, as if they were one with the night. With a flick of their wrist and a flash of steel, they dispatched the monster with an otherworldly grace, as if they were born for such battles.", "\n\nThe child gazed in \(characterEmotion(emotion: .amazement)[0]) at their savior, their heart overflowing with \(characterEmotion(emotion: .gratitude)[1]) for this enigmatic hero. In the \(characterEmotion(emotion: .happy)[2]) of a campfire's glow, they shared a simple meal together, yet the air remained heavy with the weight of the unspoken.", "\n\nSensing the tension, the child broke the silence, their voice \(characterEmotion(emotion: .terrified)[1]) like the leaves in the night breeze. \"Please,\" they implored, \"tell me a story. Anything to fill this silence.\"", "\n\nThe mysterious person hesitated, their eyes revealing a lifetime of secrets. But the child's yearning eyes were impossible to resist. Finally, the enigmatic figure agreed, their voice like the whisper of the wind through leaves.", "\n\nIn a \(characterEmotion(emotion: .sad)[2]) and \(characterEmotion(emotion: .sad)[3]) voice, he began to weave a tale of a kingdom shrouded in both splendor and shadows. In the golden age of this land, laughter echoed through the streets, and joy was abundant. But there was a dark underbelly – magic was considered a malevolent force, a curse upon the kingdom, and its use was punishable by death.", "\n\nIn this kingdom, there lived a young \(mainCharacter.gender[0])\(mainCharacter.name), whose heart brimmed with the spirit of an adventurer. By day, they honed their skills with the sword, destined to inherit the throne. By night, they were a clandestine scholar, sneaking into the royal library to uncover the secrets of the world beyond the castle walls and the hidden history of their realm. Yet, a shadow loomed over their quest for knowledge, for pages from the books detailing the history of magic had been torn away.", "\n\nThe story took a twist as the enigmatic storyteller recounted the eve of \(mainCharacter.gender[1])\(mainCharacter.name)'s impending birthday, where their heart raced with \(characterEmotion(emotion: .anxious)[1]). Darkness shrouded the kingdom, and within the \(mainCharacter.gender[0])'s chest, a storm of possibilities and secrets swirled, ready to unfurl in a world where magic was both a forbidden dream and a haunting reality.\n\n", "Do you want to leave your bed to go adventure into the night? (y/n)"]
    
    //choice 1
    let leaveBed = ["\n\(mainCharacter.gender[1])\(mainCharacter.name) decided to go to the library to get more reading in, driven by an insatiable \(characterEmotion(emotion: .curious)[2]). The moonlight painted a silver path on the castle floors, guiding \(mainCharacter.name) through the labyrinthine corridors. As they walked towards the library, a peculiar sound piqued their interest.\n\n", "Upon reaching the source of the noise, \(mainCharacter.name) found themselves in a dimly lit hallway, shadows dancing in the corners. A group of castle guards stood, huddled and speaking in hushed tones. The conversation was intense, their faces contorted with \(characterEmotion(emotion: .anger)[0]).\n\n", "While observing, \(mainCharacter.name) noticed something unsettling. One of the guards held a bundle of papers, and as they gesticulated passionately, pages fluttered to the floor. The papers were worn, their edges jagged, and their contents hidden from view. Something about this encounter felt all too familiar, as though they had stumbled upon a piece of the very mystery that had eluded them in the library.\n\n", "Suddenly, one of the guards glanced in \(mainCharacter.name)'s direction, his eyes locking onto the \(mainCharacter.gender[0]). \(characterEmotion(emotion: .terrified)[4]) surged through \(mainCharacter.name), and in that instant, \(mainCharacter.name) made a swift decision to retreat, turning and fleeing back to their room.\n\n", "Back within the safety of their chamber, \(mainCharacter.gender[0])\(mainCharacter.name) found it impossible to sleep. They lay awake, mind racing, questioning what they could have possibly seen. The torn pages, the whispered conversation, and the familiar figure all tugged at the strings of an enigmatic web, and \(mainCharacter.name) couldn't help but wonder what secrets they were about to uncover.\n\n"]
    
    //choice 2
    let stayBed = ["\(mainCharacter.gender[1])\(mainCharacter.name) decided to stay in their bed and let the mysterious events of the night pass without further involvement. The events beyond their chamber remained shrouded in obscurity, and the desire for a peaceful night's sleep outweighed their \(characterEmotion(emotion: .amazement)[2]).\n\n", "Under the gentle watch of the full moon, \(mainCharacter.name) drifted into slumber, leaving the enigmatic occurrences of the night to the realm of dreams and the mysteries of the morrow.\n\n"]
}



//calling everything
func chapterOne() {
    printName(mainCharacter.name)
    let story = Chapter1Story()
    showStory(story.intro)
    if userDecision(choices: ["y", "n"]) == true {
        showStory(story.leaveBed)
    }
    else {
        showStory(story.stayBed)
    }
}

