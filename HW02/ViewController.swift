//
//  ViewController.swift
//  HW02
//
//  Created by user156080 on 6/16/19.
//  Copyright © 2019 edu.uncc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var questionText: UILabel!
    var answerNumber = 0
    var questions = TriviaData.questions
    @IBOutlet weak var navBar: UINavigationBar!
    
    @IBAction func restartButton(_ sender: Any) {
        answerNumber = 0
        questionText.text = questions[answerNumber].text
        navBar.topItem?.title = "Question \(answerNumber + 1) of 11"
        tableView.reloadData()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navBar.topItem?.title = "Question \(answerNumber + 1) of 11"
        questionText.text = questions[answerNumber].text
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions[answerNumber].choices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = questions[answerNumber].choices[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        if(indexPath.row == questions[answerNumber].answer){
            print("correct")
            if(answerNumber < 10){
                answerNumber = answerNumber + 1
            }
            else{
                answerNumber = 0
                let alert = UIAlertController(title: "Congrats", message: "You have answered all of the questions", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                self.present(alert, animated: true, completion: nil)            }
            
            questionText.text = questions[answerNumber].text
            navBar.topItem?.title = "Question \(answerNumber + 1) of 11"
            tableView.reloadData()
            
        }
        else{
            let alert = UIAlertController(title: "Incorrect Answer", message: "Incorrect choose another answer", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
    }

}

