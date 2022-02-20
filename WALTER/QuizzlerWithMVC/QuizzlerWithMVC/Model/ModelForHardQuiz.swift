//
//  ModelForHardQuiz.swift
//  QuizzlerWithMVC
//
//  Created by Walter J on 2022/02/17.
//

import Foundation

struct ModelForHardQuiz {
    let title: String
    let answers: [String]
    let correctAnswer: String
    
    init (q: String, a: [String], correctAnswer: String) {
        self.title = q
        self.answers = a
        self.correctAnswer = correctAnswer
    }
}
