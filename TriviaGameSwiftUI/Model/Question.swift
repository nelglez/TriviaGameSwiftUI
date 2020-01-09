//
//  Question.swift
//  TriviaGameSwiftUI
//
//  Created by Nelson Gonzalez on 1/9/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import Foundation

struct Question: Identifiable {
    let id = UUID()
    var question: String
    var a1: String
    var a2: String
    var a3: String
    var a4: String
    var correctAnswer: Int
}
