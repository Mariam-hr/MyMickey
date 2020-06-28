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
       let story0 = "You see a fork in the road."
       let choice1 = "Take a left."
       let choice2 = "Take a right."
let example = Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right.")
let stories = [
    Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
    Story(title: "You see a tiger.", choice1: "shoiut for help.", choice2: "Play dead."),
    Story(title: "You find a treasure chest", choice1: "Open it.", choice2: "Check for traps.")
    
    ]
    @IBAction func madeChoice(_ sender: Any) {
    
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = story0
        choice1Button.setTitle("Take a left.", for: UIControl.State.normal)
        choice2Button.setTitle("Take a left.", for: UIControl.State.normal)
    }


}

