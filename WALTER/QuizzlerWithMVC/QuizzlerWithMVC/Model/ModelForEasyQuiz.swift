//
//  ModelOfQuiz.swift
//  QuizzlerWithMVC
//
//  Created by Walter J on 2022/02/16.
//

import Foundation

struct ModelForEasyQuiz {
    let question: String
    let answer: String
    
    init (q: String, a: String) {
        self.question = q
        self.answer = a
    }
}
