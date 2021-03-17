//
//  ViewController.swift
//  QuizApp
//
//  Created by Riddhi Patel on 3/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!

    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var questions: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    
//    var questionBank = [["4 + 2 = 7", "False"], ["5 + 3 = 8" , "True"], ["1 + 1 = 3","False"]]
    
   
    var quizbrain = QuizBrain()
    var score = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        updateUI()
    }
    
    
    @objc func updateUI() {
        
        
        questions.text = quizbrain.question()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
       // if questionNumber + 1 < questionBank.count {

         //    questions.text = questionBank[questionNumber].text
    }

    
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userInput = sender.currentTitle!
        
        let checkFile = quizbrain.checkAnswer(userInput) //True or False
        
        if checkFile {
            sender.backgroundColor = UIColor.green
            score += 1
            scoreLabel.text = " Score : \(score)"
        }
        
        else {
            sender.backgroundColor = UIColor.red
        }
        
       
        quizbrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        
        
        
    }
    
    
    
    




}
