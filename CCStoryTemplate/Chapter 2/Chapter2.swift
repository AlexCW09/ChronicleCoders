//
//  Chapter2.swift
//  CLIStoryTemplate
//

import Foundation
var notProceedToChapter2 = true
//let endOfChapter2 = "The Servants would remember how \(mainCharacter.name) would treat them."
var decidingFork = true

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
    //Chapter 2 1st fork
    while(exploreUpstairs)
    {
        print("Do you want to explore upstairs or the base floor? (y for upstairs, n for base floor)")
        if let userDecision = readLine()
        {
            if userDecision == "y"
            {
                chapterTwoFirstForkYes()
                //print(endOfChapter2)
                exploreUpstairs = false
            }
            else if userDecision == "n"
            {
                chapterTwoFirstForkNo()
                //print(endOfChapter2)
                exploreUpstairs = false
            }
            else
            {
                print("Invalid input")
            }
        }
    }
    
}

func startOfChapterTwo()
{
    let chapterTwoIntro = ["Years had passed since \(mainCharacter.name)'s youth, and age had only added to their insatiable curiosity and love for adventure. Every day was a new quest, an opportunity to solve the mysteries of the world. The townsfolk relied on them, beckoning them to undertake daring feats, from vanquishing menacing creatures to reuniting lost souls and restoring crumbling edifices. But one fateful day, a hushed whisper traveled through the village, carried on the wings of the wind, reaching \(mainCharacter.name)'s ears. It was a request unlike any other.\n\n", "The villagers had grown uneasy, their faces etched with concern, as they spoke of an abandoned house nestled on the outskirts of the village. This enigmatic dwelling, shrouded in a centuries-old mystery, had long been a source of whispers and stories told by the fireside. They claimed they could hear eerie noises that reverberated through the stillness of the night, accompanied by an otherworldly glow that emanated from the house's cracked windows.\n\n", "\(mainCharacter.name), never one to shy away from a challenge, accepted the quest with a determined nod. With a heart filled with anticipation and a cloak donned for adventure, they embarked on a path rarely traveled. The tall grass whispered secrets as it rustled beneath their boots, leading the way to the forsaken dwelling. Nature itself seemed to have tried to claim the house, its once proud walls now adorned with creeping vines and a defiant tree growing through its heart.\n\n", "As \(mainCharacter.name) stood before the ancient door, the wood creaked and groaned in protest, as if warning them of the secrets that lay within. They pushed the door open, and a cloud of ages-old dust was unleashed into the air, dancing in the beams of daylight that pierced through the decaying structure. The inside of the house was a desolate tableau of time's relentless march. Shattered remnants of furniture lay strewn about, the remnants of memories long past. The walls were adorned with fractured portraits and faded tapestries, each a fragment of a forgotten era.\n\n", "Despite the eerie stillness, \(mainCharacter.name)'s heart beat with excitement and trepidation. What mysteries were concealed in the shadows? What secrets lay buried in this forsaken place? With every creaking floorboard, they ventured deeper into the abyss, their senses alert, and their quest for truth unwavering."]
    
    showStory(story: chapterTwoIntro)
}

func chapterTwoFirstForkYes()
{
    let storyFork = ["With curiosity as their guiding star, \(mainCharacter.name) decided to ascend the creaking staircase, their heart pounding in anticipation. Each step seemed to echo with the whispers of centuries gone by. As they reached the upper floor, an ethereal, cerulean light gently spilled out from the last room, bathing the corridor in an otherworldly glow. \(mainCharacter.name) couldn't resist the pull of the light, and when they entered the room, a breathtaking sight awaited them. In the center of the room, a radiant, luminescent rock was suspended in mid-air, connected to the delicate branches of young, growing saplings. It was an enchanting tableau of life and rejuvenation. As \(mainCharacter.name) approached, they witnessed the miracle unfolding before them – with every passing moment, the dying trees surrounding the rock were slowly but surely being healed.\n\n", "Eyes wide with wonder, \(mainCharacter.name) reached out a hand to touch the tree closest to them. As their fingers brushed against the bark, a profound sensation coursed through their veins. The cut on their hand, a scar from a previous adventure, began to mend itself, disappearing before their eyes. The rock was a conduit for life's magic, a source of immeasurable power. Without hesitation, \(mainCharacter.name) grasped the glowing treasure, an irrefutable belief surging through them that this artifact held the answer to the enigmatic ruckus that had plagued the village for so long.\n\n"]
    
    showStory(story: storyFork)
}
func chapterTwoFirstForkNo()
{
    let storyFork = ["Choosing to explore the base floor, \(mainCharacter.name) wandered through the dilapidated halls, where shadows whispered secrets and echoes of the past lingered in the air. Each room was a void of emptiness, a testament to the passage of time. The silence was deafening until \(mainCharacter.name) found themselves in a dimly lit hallway, the last door beckoning them with an air of mystery.\n\n", "Just as they were about to grasp the doorknob, a voice erupted from behind. An elderly man, his face etched with the lines of time, had appeared out of thin air, his voice tremulous and filled with anger. The two engaged in conversation, but as the minutes passed, the old man's rage grew, and his eyes seemed to ignite with an unnatural, fiery red. It was a sight that sent shivers down \(mainCharacter.name)'s spine, a stark departure from the serene beauty of the upstairs room.\n\n", "Before \(mainCharacter.name) could react, a bolt of lightning, conjured from the old man's will, struck them down. As they knelt on the ground, struggling to comprehend the strange turn of events, it became evident that the old man was a wielder of magic, a force beyond the ordinary. He kept muttering, \"they're wrong, THEY ARE WRONG,\" each word a cryptic puzzle. \(mainCharacter.name), their curiosity undeterred even in the face of danger, tried to get the old man to explain his cryptic words, but the elderly wizard's madness seemed to envelop him more with each passing moment, like a tempest spiraling into the unknown.\n\n"]
    
    showStory(story: storyFork)
}

func showStory(story: [String])
{
    for sentence in story
    {
        print(sentence)
        sleep(15)
    }
}
