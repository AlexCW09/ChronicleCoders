//
//  Chapter1.swift
//  CLIStoryTemplate
//

import Foundation
import SwiftUI

func chapterOne() {
    // Creating variables and constants for people/decisions in the story
    
    //Taking user's name as an input, changing global variable in main function
    print("Enter your name: ")
    if let user = readLine() {
        name = user
    }
    //recieves gender from user and assigns prince, princess or defaults to their name
    print("Enter you gender (ONLY CHOOSE male, female, nonbinary): ")
    if let gend = readLine() {
        gender = gend
        if (gender == "male") {
            gender = "prince"
        } else if (gender == "female") {
            gender = "princess"
        } else if (gender == "nonbinary") {
            gender = name
        }
    } else {
        print("Invalid input")
    }
    
    
    

    

    
   
    
    
    
    
    
    
}
