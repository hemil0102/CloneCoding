//
//  ViewController.swift
//  QuizzlerWithMVC
//
//  Created by Walter J on 2022/02/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var btnO: UIButton!
    @IBOutlet weak var btnX: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var score: UILabel!
    
    var quizs = Quizs()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func btnAct(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        
        if let answer = userAnswer {
            print("answer = \(answer)")
            sender.backgroundColor = quizs.getAnswer(answer) ? UIColor.systemTeal : UIColor.systemPink
            quizs.nextQuiz()
            Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        }
    }
        
    @objc func updateUI() {
        questionLabel.text = quizs.getQuizName()
        progressBar.progress = quizs.getProgress()
        score.text = "점수 : \(quizs.getScore())점"
        btnO.backgroundColor = UIColor.clear
        btnX.backgroundColor = UIColor.clear
    }
}

