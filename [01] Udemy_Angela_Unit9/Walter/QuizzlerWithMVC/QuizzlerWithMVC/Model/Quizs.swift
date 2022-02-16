//
//  Quizs.swift
//  QuizzlerWithMVC
//
//  Created by Walter J on 2022/02/16.
//

import Foundation

struct Quizs {
    var quizNumber = 0
    let quiz = [
        ModelOfQuiz(q: "달팽이의 피는 초록색이다.", a: "True"),
        ModelOfQuiz(q: "인간 뼈의 약 1/4이 발에 있다.", a: "True"),
        ModelOfQuiz(q: "사람 폐의 총 면적은 약 70평방 미터이다.", a: "True"),
        ModelOfQuiz(q: "미국의 서쪽 버지니아 도로를 달리던 중 뜻하지 않게 동물을 쳤을땐, 집에 가져가서 먹어도 된다.", a: "True"),
        ModelOfQuiz(q: "영국 런던에서 if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        ModelOfQuiz(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        ModelOfQuiz(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        ModelOfQuiz(q: "Google was originally called 'Backrub'.", a: "True"),
        ModelOfQuiz(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        ModelOfQuiz(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        ModelOfQuiz(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        ModelOfQuiz(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    func getQuizName() -> String {
        return quiz[quizNumber].question
    }
}
