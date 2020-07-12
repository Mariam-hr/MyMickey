//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!

    var storyIndex = 0
       let stories = [
                     Story(title: "You see a fork in the road.", choice1: Answer(text: "Take a left.", nextStoryIndex: 1), choice2: Answer(text: "Take a right.", nextStoryIndex: 2)),
                     Story(title: "You see a tiger.", choice1: Answer(text: "Shout for help.", nextStoryIndex: 0), choice2: Answer(text: "Play dead.", nextStoryIndex: 0)),
                    Story(title: "You find a treasure chest", choice1: Answer(text:  "Open it.", nextStoryIndex: 0), choice2: Answer(text: "Check for traps.", nextStoryIndex: 0))
        
       ]
       
       @IBAction func madeChoice(_ sender: UIButton) {
           let currentStory = stories[storyIndex]
           
           if sender == choice1Button {
               storyIndex = currentStory.choice1.nextStoryIndex
          } else {
              storyIndex =  currentStory.choice2.nextStoryIndex
          }
           updateUI()
           
           
       }
       
       override func viewDidLoad() {
           super.viewDidLoad()
           updateUI()
       }
       
       func updateUI() {
           let currentStory = stories[storyIndex]
           storyLabel.text = currentStory.title
           choice1Button.setTitle(currentStory.choice1.text, for: .normal)
           choice2Button.setTitle(currentStory.choice2.text, for: .normal)
       }

   }

