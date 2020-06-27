//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Mariam Baghdasaryan on 6/15/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    var answer: String
    var correctAnswer: String
    init(q: String, a: String, c: String) {
        text = q
        answer = a
        correctAnswer = c
    }
    
}
