//
//  BMIBrain.swift
//  BMICalculator
//
//  Created by Walter J on 2022/02/22.
//

import Foundation

struct BMIBrain {
    var bmi: BMIStruct?
    var bmiPicker = BMIPicker()
    
    var currHeight: Float?
    var currWeight: Float?
    
    mutating func configPicker(startH:Int, endH:Int, startW:Int, endW:Int) {
        for h in startH...endH { self.bmiPicker.height.append(h) }
        for w in startW...endW { self.bmiPicker.weight.append(w) }
    }
    
    //Convert to String and setting the picker with Height Data
    mutating func getHeightWithString(row r: Int) -> String {
        return String(bmiPicker.height[r])
    }
    
    //Convert to String and setting the picker with Weight Data
    mutating func getWeightWithString(row r: Int) -> String {
        return String(bmiPicker.weight[r])
    }
    
    //Height of the picker count
    func heightCount() -> Int {
        return bmiPicker.height.count
    }
    
    //Weight of the picker count
    func weightCount() -> Int {
        return bmiPicker.weight.count
    }
    
    //Picker에서 Height 값이 선택되었을 때
    mutating func setHeight(row r: Int) {
        currHeight = Float(bmiPicker.height[r])
    }
    
    //Picker에서 Weight값이 선택되었을 때
    mutating func setWeight(row r: Int) {
        currWeight = Float(bmiPicker.weight[r])
    }
    
    
    mutating func calculateBMI() {
        var currBmi:Float?
        if let h = currHeight, let w = currWeight {
            currBmi = w / pow(h/100, 2)
        }
        
        if let cBmi = currBmi {
            if cBmi <= 18.5 {
                self.bmi = BMIStruct(bmiValue: cBmi, advice: "Eat more pies!", imoticon: "🥺")
            } else if cBmi <= 24.9 {
                self.bmi = BMIStruct(bmiValue: cBmi, advice: "Fit as a fiddle!", imoticon: "😄")
            } else {
                self.bmi = BMIStruct(bmiValue: cBmi, advice: "Eat less pies!", imoticon: "😭")
            }
        }
    }
    
    func getBMI() -> String {
        return String(format: "%.1f", self.bmi?.bmiValue ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getImoticon() -> String {
        return bmi?.imoticon ?? ""
    }
}
