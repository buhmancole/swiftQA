//
//  ViewController.swift
//  QuestionAnswer
//
//  Created by Cole Buhman on 3/7/22.
//

import UIKit

class ViewController: UIViewController {
    let questions = ["What is Batman's real name?", "What is Superman's real name?"]
    let answers = ["Bruce Wayne", "Clark Kent"]
    var index = 0
    @IBOutlet weak var qLabel: UILabel!
    @IBOutlet weak var aLabel: UILabel!
    @IBAction func answer(_ sender: UIButton) {
        aLabel.text = answers[index]
    }
    @IBAction func next(_ sender: UIButton) {
        index = (index + 1) % questions.count
        qLabel.text = questions[index]
        aLabel.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        qLabel.text = questions[index]
        aLabel.text = ""
    }


}

