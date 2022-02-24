//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by YEHROEI HO on 2022/02/21.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
          Question(q: "Harry가 키우는 고양이는 몇마리?😼", a: ["한 마리", "두 마리", "세 마리"], correctAnswer: "두 마리"),
          Question(q: "Harry의 키는 몇?🤔", a: ["178", "179", "180"], correctAnswer: "178"),
          Question(q: "Harry가 태어난 나라는?", a: ["한국", "대만", "미국"], correctAnswer: "한국"),
          Question(q: "Harry가 하고 있는 운동은?", a: ["왁싱", "펜싱", "복싱"], correctAnswer: "복싱"),
          Question(q: "iOS 개발에 필수로 필요한 장비는?", a: ["마우스", "MacBook", "외장 하드"], correctAnswer: "MacBook"),
          Question(q: "다음 중 Movel에 해당하지 않는 것은?", a: ["역동적인 개발자", "Moveloper", "좌절"], correctAnswer: "좌절"),
          Question(q: "Movel의 현재 구성 인원은 몇명?", a: ["1", "2", "3"], correctAnswer: "3"),
          Question(q: "Movel은 누구의 것인가?", a: ["명박이꺼", "우리 모두의 것", "누구에 것도 아니다"], correctAnswer: "우리 모두의 것"),
          Question(q: "Movel의 각 구성원은 세상을 바꿀 힘을 갖고 있다. ", a: ["예", "아니오", "뭐하로 바꾸나요?"], correctAnswer: "예"),
          Question(q: "꿈을 이루기 위해서 필요한 것은?", a: ["좌절", "낙심", "행동과 계획"], correctAnswer: "행동과 계획"),
          Question(q: "나는 내 자신을 믿고 Movel의 Moveloper들을 사랑한다.", a: ["그럼요", "So So", "글쎄요"], correctAnswer: "그럼요"),
          Question(q: "우린 성공할 것이다.", a: ["Of Course", "미래는 알 수가 없다", "Maybe?"], correctAnswer: "Of Course")
 
/*
          Question(q: "Harry는 고양이 두마리를 키우고 있다.😼😼", a: "True"),
          Question(q: "Harry의 키는 180이 넘어간다.🤔", a: "False"),
          Question(q: "Harry는 대학 시절 전액 장학금을 받은 적이 있다.🤔", a: "True"),
          Question(q: "Harry는 한국에서 태어났다.🇰🇷", a: "True"),
          Question(q: "Harry는 한국 대학을 나왔다.🏫", a: "True"),
          Question(q: "Harry는 복싱을 한다다.🥊", a: "True"),
          Question(q: "Movel은 역동적인 개발자들이 활동하는 공간이다.🤸🏼‍♂️", a: "True"),
          Question(q: "Movel은 현재 종민, Walter, Harry 3명의 멤버로 구성되어 있다.👨🏻‍💻👨🏻‍💻👨🏻‍💻", a: "True"),
          Question(q: "Movel은 팀원 모두의 것이다.😁", a: "True"),
          Question(q: "Movel의 각 구성원은 열정이 가득하고 세상을 바꿀 힘을 갖고 있다.🔥", a: "True"),
          Question(q: "업적을 달성하기 위해서 자신의 건강을 해치는 것은 타당하다.😗", a: "False"),
          Question(q: "꿈을 이루기 위해서는 실패를 해도 계속 도전하는 정신이 필요하다.😎", a: "True"),
          Question(q: "나는 내 자신을 믿고 Movel의 Moveloper들을 사랑한다.❤️", a: "True"),
          Question(q: "우린 성공할 것이다.✌️", a: "True"),
          Question(q: "퀴즈에서 사용된 서로 다른 이모티콘은 총 13개다.🤪", a: "False"), */
    ]

    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correctAnswer {
            score +=  1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
   
    func getAnswers() -> [String] {
        return quiz[questionNumber].answer
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    

}
