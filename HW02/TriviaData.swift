//
//  TriviaData.swift
//  Test
//
//  Created by Shehab, Mohamed on 6/12/19.
//  Copyright © 2019 UNCC. All rights reserved.
//

import Foundation

class Question : CustomStringConvertible{
    var description: String {
        return "Question(text: \(text), answer: \(answer), choices: \(choices))"
    }
    
    let text:String
    let answer:Int
    let choices:[String]
    
    init(text: String, answer:Int, choices:[String]) {
        self.text = text
        self.answer = answer
        self.choices = choices
    }
}

class TriviaData{
    public static let questions:[Question] = [
        Question(text: "Who is the first President of the United States of America?", answer: 0, choices: ["George Washington","Thomas Jefferson","James Monroe","John Adams"]),
        Question(text: "Who was the first female pilot to fly solo across the Atlantic Ocean?", answer: 2, choices: ["Bonnie Gann","Elsie MacGill","Amelia Earhart","Linda Godwin"]),
        Question(text: "How many metres is one mile?", answer: 3, choices: ["100","1000","1705.212","1609.344"]),
        Question(text: "What are vertebrates that live both under water and on land called?", answer: 0, choices: ["Amphibians","Reptiles","Mammals","Insects"]),
        Question(text: "Which of the following countries is landlocked?", answer: 2, choices: ["Brazil","Cuba","Bolivia","Colombia"]),
        Question(text: "Who won the US Open 2012 Women Tennis Tournament?", answer: 0, choices: ["Serena Williams","Venus Williams","Maria Sharapova","Vera Zvonareva","Victoria Azarenka"]),
        Question(text: "Vienna is the capital of?", answer: 1, choices: ["Sweden","Austria","Italy"]),
        Question(text: "Renminbi is the currency of which country?", answer: 1, choices: ["Japan","China","Nepal","Bhutan"]),
        Question(text: "Who is David Cameron?", answer: 0, choices: ["Was UK's Prime Minister","Soccer Player","Actor","US Senator"]),
        Question(text: "The capital of Italy is?", answer: 3, choices: ["Venice","Florence","Milan","Rome"]),
        Question(text: "Euro is not the currency used by?", answer: 3, choices: ["Spain","France","Germany","United Kingdom"])
    ]
}
