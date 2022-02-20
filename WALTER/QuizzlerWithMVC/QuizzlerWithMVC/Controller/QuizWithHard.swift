//
//  QuizWithHard.swift
//  QuizzlerWithMVC
//
//  Created by Walter J on 2022/02/17.
//

import UIKit

class QuizWithHard: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var firstAnsBtn: UIButton!
    @IBOutlet weak var secondAnsBtn: UIButton!
    @IBOutlet weak var thirdAnsBtn: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quiz = HardQuiz()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerBtnAct(_ sender: UIButton) {
        guard let answer = sender.currentTitle else {
            return
        }
        
        quiz.submitUserAnswer(userAnswer: answer)
        quiz.increasQuizNumber()
        updateUI()
    }
    
    func updateUI() {
        //퀴즈 셋팅
        let quizTitle = quiz.getTitle()
        self.questionLabel.text = quizTitle
        
        //답변 셋팅
        let quizAnswer = quiz.getAnswers()
        self.firstAnsBtn.setTitle(quizAnswer[0], for: .normal)
        self.secondAnsBtn.setTitle(quizAnswer[1], for: .normal)
        self.thirdAnsBtn.setTitle(quizAnswer[2], for: .normal)
        
        //점수 셋팅
        let score = quiz.getScore()
        self.scoreLabel.text = "점수 : \(score)점"
        
        //프로그레스바 셋팅
        let progress = quiz.getProgress()
        self.progressBar.progress = progress
    }
}
