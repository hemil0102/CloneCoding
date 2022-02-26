//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculatedViewController: UIViewController {

    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    
    //var bmiValue = "0.0" //controller

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2fm", sender.value)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0fkg", sender.value)
    }
    @IBAction func calculateButton(_ sender: UIButton) {
        
        //let height = heightSlider.value
        //let weight = weightSlider.value
        
        //let bmi = weight / pow(height, 2) //to controller
        //bmiValue = String(format: "%.1f", bmi) //to controller
        calculatorBrain.calculateBmi(height: heightSlider.value, weight: weightSlider.value)
        
        self.performSegue(withIdentifier: "goToResult", sender: self) //segue 걸고 넘어가는 코드
        
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            //destinationVC = ResultViewController
            
            destinationVC.bmiValue = calculatorBrain.getBmiValue
            destinationVC.advice = calculatorBrain.getAdvice
            destinationVC.color = calculatorBrain.getColor
        }
    }
}

//1. UIButton
//2. UIControl
//3. UIView
//4. UIResponder
//5. NSObject
//뷰: 뷰 코드(혹은 스토리보드)
//컨트롤러: 뷰 컨트롤러. 액션 함수(버튼, 슬라이더 등)
//모델: 컨트롤러에서 실행해야 하는 함수 정리
