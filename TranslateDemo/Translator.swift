//
//  Translator.swift
//  TranslateDemo
//
//  Created by Adrian Bolinger on 12/17/16.
//  Copyright © 2016 Adrian. All rights reserved.
//

import Foundation

/*
 I'm putting this in for demonstration purposes. You'll need to figure out the code to translate.
 */
enum Word: String {
    case english = "hello"
    case arabic = "مرحبا"
}

class Translator: NSObject {
    
    func translate(word: String) -> String {
        switch word {
        case Word.english.rawValue:
            print("translate(Word.english.rawValue) called")
            return Word.arabic.rawValue
        case Word.arabic.rawValue:
            print("translate(Word.arabic.rawValue called")
            return Word.english.rawValue
        default:
            return "No translation available"
        }
    }
    
}
