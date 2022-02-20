//
//  HardQuiz.swift
//  QuizzlerWithMVC
//
//  Created by Walter J on 2022/02/17.
//

import Foundation

struct HardQuiz {
    var quizNumber = 0
    var score = 0
    
    let quiz = [
        ModelForHardQuiz(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        ModelForHardQuiz(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        ModelForHardQuiz(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        ModelForHardQuiz(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        ModelForHardQuiz(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        ModelForHardQuiz(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        ModelForHardQuiz(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        ModelForHardQuiz(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        ModelForHardQuiz(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        ModelForHardQuiz(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    //다음 퀴즈로 넘어가기 위한 number 증가
    mutating func increasQuizNumber() {
        if quizNumber < quiz.count - 1 {
            self.quizNumber += 1
        } else {
            self.quizNumber = 0
            self.score = 0
        }
    }
    
    //정답 확인
    mutating func submitUserAnswer(userAnswer ca: String) {
        if ca == quiz[quizNumber].correctAnswer {
            self.score += 1
        }
    }
    
    //퀴즈 질문 가져오기
    func getTitle() -> String {
        quiz[quizNumber].title
    }
    
    //퀴즈 답변 가져오기
    func getAnswers() -> [String] {
        quiz[quizNumber].answers
    }
    
    //점수 가져오기
    func getScore() -> Int {
        return score
    }
    
    //프로그래스 바 상태 가져오기
    func getProgress() -> Float {
        return Float(quizNumber+1) / Float(quiz.count)
    }
}
