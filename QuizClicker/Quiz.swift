//
//  Quiz.swift
//  QuizClicker
//
//  Created by Victor Li Wang on 5/25/16.
//  Copyright © 2016 Victor Li Wang. All rights reserved.
//

import UIKit

struct Quiz {
    var name: String?
    var date: String?
    var numQuestions: Int
    var numParticipants: Int
    var avgScore: Double
    
    init(name: String?, date: String?, numQuestions: Int) {
        self.name = name
        self.date = date
        self.numQuestions = numQuestions
        self.numParticipants = 0
        self.avgScore = 0.0
    }
    
    mutating func setParticipants(numParticipants: Int) {
        self.numParticipants = numParticipants
    }
    
    mutating func setAvgScore(avgScore: Double) {
        self.avgScore = avgScore
    }
}

let quizData = [
    Quiz(name: "Quiz 1", date: "5/25/16", numQuestions: 4) ,
    Quiz(name: "Quiz 2", date: "5/26/16", numQuestions: 10)
]