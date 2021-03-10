//
//  ViewController.swift
//  QuizApp
//
//  Created by Riddhi Patel on 3/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trueButton: UIButton!

    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var questions: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    var questionBank = [["4 + 2 = 7", "False"], ["5 + 3 = 8" , "True"], ["1 + 1 = 3","False"]]
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        updateUI()
    }
    
    @objc func updateUI() {
        
        questions.text = questionBank[questionNumber][0]
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
        if questionNumber + 1 < questionBank.count {
            
            questions.text = questionBank[questionNumber][0]
    }

    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userInput = sender.currentTitle!
        
        if userInput == questionBank[questionNumber][1]{
            sender.backgroundColor = UIColor.green
        }
        
        else {
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber + 1 < questionBank.count {
            questionNumber += 1
        }
        
        else {
            questionNumber = 0
        }
        
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        
        
        
    }
    
    
    
    



}
