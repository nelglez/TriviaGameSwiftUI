//
//  QuestionView.swift
//  TriviaGameSwiftUI
//
//  Created by Nelson Gonzalez on 1/9/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct QuestionView: View {
    var questionController: QuestionController
    var question: Question
    @State private var isCorrect = false
    @State var buttonTag = 0
    @State private var score = 0
    @Binding var index: Int
    
    var body: some View {
        VStack {
            Text(question.question).font(.title).fontWeight(.heavy)
            
            Button(action: {
                self.buttonTag = 0
                self.setScore()
                
                self.getNextQuestion()
                
            }) {
                Text(question.a1)
            }.padding().frame(width: 300).background(Color.green).cornerRadius(10).foregroundColor(.white).padding()
            
            Button(action: {
                self.buttonTag = 1
                self.setScore()
                
                self.getNextQuestion()
                
            }) {
                Text(question.a2)
            }.padding().frame(width: 300).background(Color.green).cornerRadius(10).foregroundColor(.white).padding()
            
            Button(action: {
                self.buttonTag = 2
                self.setScore()
                
                self.getNextQuestion()
                
            }) {
                Text(question.a3)
            }.padding().frame(width: 300).background(Color.green).cornerRadius(10).foregroundColor(.white).padding()
            
            Button(action: {
                self.buttonTag = 3
                self.setScore()
                self.getNextQuestion()
            }) {
                Text(question.a4)
            }.padding().frame(width: 300).background(Color.green).cornerRadius(10).foregroundColor(.white).padding()
            
            
        }.padding()
    }
    
    func setScore() {
        if self.question.correctAnswer == self.buttonTag {
            print("Correct")
            self.score += 1
        } else {
            print("incorrect!")
        }
    }
    
    func getNextQuestion() {
        if self.index != self.questionController.questions.count - 1 {
            self.index += 1
        } else {
            self.index = 0
            print("End of questions, display score view here.")
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(questionController: QuestionController(), question: Question(question: "What is the capital of Australia?", a1: "Sydney", a2: "Melbourne", a3: "Canberra", a4: "Brisbane", correctAnswer: 2), index: .constant(0))
    }
}
