//
//  ContentView.swift
//  TriviaGameSwiftUI
//
//  Created by Nelson Gonzalez on 1/9/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var questionController = QuestionController()
    @State private var index = 0
    var body: some View {
        QuestionView(questionController: self.questionController, question: self.questionController.questions[index], index: $index)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
