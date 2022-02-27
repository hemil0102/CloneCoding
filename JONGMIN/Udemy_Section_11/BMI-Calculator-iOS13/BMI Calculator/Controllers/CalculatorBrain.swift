//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by JONGMIN Youn on 2022/02/26.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
   
    var bmi: BMI?
    
    var getBmiValue: String {
        get {
//            if let safeBMI = bmi {
//                return String(format: "%.1f", safeBMI)
//            } else {
//                return "0.0"
//            }
            return String(format: "%.1f", bmi?.value ?? 0.0)
        }
    }
    
    var getAdvice: String {
        get {
            return String(bmi?.advice ?? "haven't set advice")
        }
    }
    
    var getColor: UIColor {
        get {
            return bmi?.color ?? .white
        }
    }
        
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
        } else if (bmiValue < 24.9) {
            bmi = BMI(value: bmiValue, advice: "Good! keep your lifestyle!", color: UIColor.systemGreen)
        } else {
            bmi = BMI(value: bmiValue, advice: "No more pies", color: UIColor.systemPink)
        }
    }
}
