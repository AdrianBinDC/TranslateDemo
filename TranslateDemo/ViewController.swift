//
//  ViewController.swift
//  TranslateDemo
//
//  Created by Adrian Bolinger on 12/17/16.
//  Copyright © 2016 Adrian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textToTranslateTextField: UITextField!
    @IBOutlet weak var translateToArabicButton: UIButton!
    @IBOutlet weak var translateToEnglishButton: UIButton!
    
    let speechSynthesizer = Speaker()
    let translator = Translator()
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func translateToArabicAction(_ sender: UIButton) {
        // check that there are characters entered in the textField
        if (textToTranslateTextField.text?.characters.count)! > 0 {
            let translatedText = translator.translate(word: (textToTranslateTextField.text?.lowercased())!)
            speechSynthesizer.speak(translatedText, in: Language.arabic.rawValue)
        }
    }
    
    @IBAction func translateToEnglishAction(_ sender: UIButton) {
        // check that there are characters entered in the textField
        if (textToTranslateTextField.text?.characters.count)! > 0 {
            let translatedText = translator.translate(word: (textToTranslateTextField.text?.lowercased())!)
            speechSynthesizer.speak(translatedText, in: Language.english.rawValue)
        }
    }
}

