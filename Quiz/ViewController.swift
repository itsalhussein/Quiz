//
//  ViewController.swift
//  Quiz
//
//  Created by Hussein Anwar on 07/04/2022.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Outlets
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    //MARK: - Properties
    
    let questions = [
        "What's the capital of Germany?",
        "When the next world cup in 2022 will be held?",
        "What is 6*8?"
    ]
    let answsrs = [
        "Berlin",
        "Qatar",
        "48"
    ]
    var currentQuestionIndex: Int = 0
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
        // Do any additional setup after loading the view.
    }
    

    //MARK: - Actions
    
    @IBAction func showNextQuestion(_ sender: UIButton){
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton){
        let answer = answsrs[currentQuestionIndex]
        answerLabel.text = answer
    }

}

