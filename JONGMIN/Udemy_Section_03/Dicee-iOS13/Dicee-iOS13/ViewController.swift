//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //뷰 초기 로드 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //앱 실행시 이미지 불러오기
        diceImageView1.image = UIImage(named: "DiceSix")
        //diceImageView1.alpha = 0.5
        
        diceImageView2.image = UIImage(named: "DiceTwo")

    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button got tapped.")
        
    
//        diceImageView1.image = UIImage(named: "DiceFour")
//        diceImageView2.image = UIImage(named: "DiceThree")
        
        let diceArray = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")]
        
        diceImageView1.image = diceArray.randomElement()!
        
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
    }
    

}

