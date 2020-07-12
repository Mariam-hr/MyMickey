//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
struct Answer {
    let text: String
    let nextStoryIndex: Int
}

struct Story {
    let title: String
    var choice1: Answer
    var choice2: Answer
}
