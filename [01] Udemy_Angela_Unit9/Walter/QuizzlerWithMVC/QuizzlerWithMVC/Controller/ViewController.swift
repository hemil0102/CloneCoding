//
//  ViewController.swift
//  QuizzlerWithMVC
//
//  Created by Walter J on 2022/02/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var btnO: UIButton!
    @IBOutlet weak var btnX: UIButton!
    
    let quizs = Quizs()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func btnAct(_ sender: UIButton) {
        
    }
    
    func updateUI() {
        questionLabel.text = quizs.getQuizName()
    }
}

