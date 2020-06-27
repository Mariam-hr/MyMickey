//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    let quiz = [
        Question(q: "I like Mickey", a: "True"),
        Question(q: "I want to go to China", a: "True"),
        Question(q: "I like mice", a: "False"),
        Question(q: "I am Hrashq", a: "True"),
        Question(q: "I am programmer", a: "False"),
        Question(q: "I like cats", a: "False"),
        Question(q: "I like horror films", a: "False"),
        Question(q: "I love Cillian Murphy", a: "True"),
        Question(q: "I want to be a famous actress", a: "True"),
        Question(q: "I'll have my own dress shop", a: "True"),
        Question(q: "I love myself very much", a: "True")
    ]
    
    var questionNumber = 0
    var score = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     updateUI()
        
    }
    

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle //True or False
        let actualAnswer = quiz[questionNumber].answer
        if userAnswer == actualAnswer {
            score += 1
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        func getScore() -> Int {
            return score
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
      
       Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    
    }
    
    
    @objc func updateUI(){
        questionLabel.text = quiz[questionNumber].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
        scoreLabel.text = "Score: \(score)"
      
    }
    


}

