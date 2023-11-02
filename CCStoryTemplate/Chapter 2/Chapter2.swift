//
//  Chapter2.swift
//  CLIStoryTemplate
//

import Foundation
var notProceedToChapter2 = true
//let endOfChapter2 = "The Servants would remember how \(mainCharacter.name) would treat them."
var decidingFork = true

enum Place
{
    case house
    case village
    case kingdom
}

var story = Chapter2Story()

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
                showStory(story: story.intro)
                notProceedToChapter2 = false
            }
            else if userDecision == "n"
            {
                print("\nRead at a your leisure.")
            }
            else
            {
                print("\nInvalid input")
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
                showStory(story: story.upstairs)
                exploreUpstairs = false
            }
            else if userDecision == "n"
            {
                showStory(story: story.baseFloor)
                exploreUpstairs = false
            }
            else
            {
                print("Invalid input")
            }
        }
    }
    
    //Chapter 2 2nd fork kill the old man
    while(doWeKillTheOldMan)
    {
        print("\nAs the old man is distracted, \(name) had to decide whether try to kill the old man or try to apprehend him. (y for kill, n for apprehend")
        if let userDecision = readLine()
        {
            if userDecision == "y"
            {
                showStory(story: story.killTheOldMan)
                doWeKillTheOldMan = false
            }
            else if userDecision == "n"
            {
                showStory(story: story.apprehendTheOldMan)
                doWeKillTheOldMan = false
            }
            else
            {
                print("Invalid input")
            }
        }
    }
    
}
enum ChapterTwoOutline
{
    case intro
    case upstairs
    case baseFloor
    case killTheOldMan
    case apprehendTheOldMan
}

struct Chapter2Story
{
    let intro: [String] = ["Years had passed since \(mainCharacter.name)'s youth, and age had only added to their insatiable curiosity and love for adventure. Every day was a new quest, an opportunity to solve the mysteries of the world. The townsfolk relied on them, beckoning them to undertake daring feats, from vanquishing menacing creatures to reuniting lost souls and restoring crumbling edifices. But one fateful day, a hushed whisper traveled through the \(Place.village), carried on the wings of the wind, reaching \(mainCharacter.name)'s ears. It was a request unlike any other.\n\n", "The villagers had grown uneasy, their faces etched with concern, as they spoke of an abandoned \(Place.house) nestled on the outskirts of the \(Place.village). This enigmatic dwelling, shrouded in a centuries-old mystery, had long been a source of whispers and stories told by the fireside. They claimed they could hear eerie noises that reverberated through the stillness of the night, accompanied by an otherworldly glow that emanated from the \(Place.house)'s cracked windows.\n", "\(mainCharacter.name), never one to shy away from a challenge, accepted the quest with a determined nod. With a heart filled with anticipation and a cloak donned for adventure, they embarked on a path rarely traveled. The tall grass whispered secrets as it rustled beneath their boots, leading the way to the forsaken dwelling. Nature itself seemed to have tried to claim the \(Place.house), its once proud walls now adorned with creeping vines and a defiant tree growing through its heart.\n", "As \(mainCharacter.name) stood before the ancient door, the wood creaked and groaned in protest, as if warning them of the secrets that lay within. They pushed the door open, and a cloud of ages-old dust was unleashed into the air, dancing in the beams of daylight that pierced through the decaying structure. The inside of the \(Place.house) was a desolate tableau of time's relentless march. Shattered remnants of furniture lay strewn about, the remnants of memories long past. The walls were adorned with fractured portraits and faded tapestries, each a fragment of a forgotten era.\n", "Despite the eerie stillness, \(mainCharacter.name)'s heart beat with excitement and trepidation. What mysteries were concealed in the shadows? What secrets lay buried in this forsaken place? With every creaking floorboard, they ventured deeper into the abyss, their senses alert, and their quest for truth unwavering."]
    
    let upstairs: [String] = ["With curiosity as their guiding star, \(mainCharacter.name) decided to ascend the creaking staircase, their heart pounding in anticipation. Each step seemed to echo with the whispers of centuries gone by. As they reached the upper floor, an ethereal, cerulean light gently spilled out from the last room, bathing the corridor in an otherworldly glow. \(mainCharacter.name) couldn't resist the pull of the light, and when they entered the room, a breathtaking sight awaited them. In the center of the room, a radiant, luminescent rock was suspended in mid-air, connected to the delicate branches of young, growing saplings. It was an enchanting tableau of life and rejuvenation. As \(mainCharacter.name) approached, they witnessed the miracle unfolding before them – with every passing moment, the dying trees surrounding the rock were slowly but surely being healed.\n", "Eyes wide with wonder, \(mainCharacter.name) reached out a hand to touch the tree closest to them. As their fingers brushed against the bark, a profound sensation coursed through their veins. The cut on their hand, a scar from a previous adventure, began to mend itself, disappearing before their eyes. The rock was a conduit for life's magic, a source of immeasurable power. Without hesitation, \(mainCharacter.name) grasped the glowing treasure, an irrefutable belief surging through them that this artifact held the answer to the enigmatic ruckus that had plagued the \(Place.village) for so long.\n"]
    
    let baseFloor: [String] = ["Choosing to explore the base floor, \(mainCharacter.name) wandered through the dilapidated halls, where shadows whispered secrets and echoes of the past lingered in the air. Each room was a void of emptiness, a testament to the passage of time. The silence was deafening until \(mainCharacter.name) found themselves in a dimly lit hallway, the last door beckoning them with an air of mystery.\n", "Just as they were about to grasp the doorknob, a voice erupted from behind. An elderly man, his face etched with the lines of time, had appeared out of thin air, his voice tremulous and filled with anger. The two engaged in conversation, but as the minutes passed, the old man's rage grew, and his eyes seemed to ignite with an unnatural, fiery red. It was a sight that sent shivers down \(mainCharacter.name)'s spine, a stark departure from the serene beauty of the upstairs room.\n", "Before \(mainCharacter.name) could react, a bolt of lightning, conjured from the old man's will, struck them down. As they knelt on the ground, struggling to comprehend the strange turn of events, it became evident that the old man was a wielder of magic, a force beyond the ordinary. He kept muttering, \"they're wrong, THEY ARE WRONG,\" each word a cryptic puzzle. \(mainCharacter.name), their curiosity undeterred even in the face of danger, tried to get the old man to explain his cryptic words, but the elderly wizard's madness seemed to envelop him more with each passing moment, like a tempest spiraling into the unknown.\n"]
    
    let killTheOldMan: [String] = ["With an unyielding resolve, \(mainCharacter.name) lunged toward the old man, the desire to end the chaos surging within them. But the previous lightning attack had taken its toll, making their movements sluggish. As \(mainCharacter.name) closed in, the old man, his eyes filled with a mixture of fear and determination, gazed downward and summoned yet another bolt of lightning. The electric force struck \(mainCharacter.name) once more, causing them to scream in agony, frozen in place by the searing pain.\n", "The relentless attack finally halted, and the old man resumed his incoherent rant. Barely conscious and driven by a desperate will to survive, \(mainCharacter.name)'s gaze fell upon a sizable wooden board, conveniently propped against a decaying wall. They seized it, using it as a makeshift shield. The old man, his voice twisted with anger, bellowed, \"JUST DIE,\" and conjured another bolt of lightning. This time, however, the wooden board served as an impromptu shield, granting \(mainCharacter.name) a momentary advantage.\n", "With a burst of strength, they struck down the old man, the impact sending a shockwave through the room. As the old man lay dying, his last breath barely audible, he whispered, \"the… stone.\" Then, as if consumed by an otherworldly fire, he crumbled to ash, leaving only an enigmatic memory. From that day forward, \(mainCharacter.name) always carried a shield, a tangible reminder of the price of curiosity. They departed the \(Place.house), leaving behind the mysteries that still clung to its decaying walls.\n"]
    
    let apprehendTheOldMan: [String] = ["With a heart guided by compassion and curiosity, \(mainCharacter.name) chose not to succumb to violence. They remained on the ground, nursing their wounds, and asked the old man the meaning behind his cryptic words, \"they are wrong.\" The old man's voice, once a torrent of anger, softened into a trembling whisper.\n", "The old man began to share a tale of a \(Place.kingdom) and its people, a \(Place.kingdom) that had once revered magic users, seeking their aid in the prosperity of the land. But a dark twist in history had altered the course of events. He spoke of a previous monarch, who had declared that all magic users were evil, igniting a war that scarred the \(Place.kingdom)'s past. \(mainCharacter.name) listened, captivated by the tale, their heart heavy with the weight of newfound knowledge.\n", "\(mainCharacter.name) pressed further, wondering how this revelation could change the present. The old man, his eyes filled with uncertainty, asked how \(mainCharacter.name) intended to mend the past's deep wounds. \(mainCharacter.name) hesitated for a moment before revealing their true identity, the shock causing the old man to shout, \"YOU'RE ONE OF THEM!\" Yet, \(mainCharacter.name) offered reassurance, convincing the old man of their sincerity and trustworthiness.\n", "As the old man's frantic cries subsided, he imparted a final, fragile trust in \(mainCharacter.name). The key to unraveling the \(Place.kingdom)'s dark history lay within their grasp. \(mainCharacter.name) departed from the \(Place.house), carrying with them the responsibility of a world-altering secret, a mission that could reshape the fate of the \(Place.kingdom) and its people."]
}

func showStory(story: [String])
{
    for sentence in story
    {
        print(sentence)
        //sleep(1)
    }
}
