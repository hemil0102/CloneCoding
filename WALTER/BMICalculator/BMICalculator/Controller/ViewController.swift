//
//  ViewController.swift
//  BMICalculator
//
//  Created by Walter J on 2022/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var height_weight_picker: UIPickerView!
    var heightForPicker:[String] = []
    var weightForPicker:[String] = []
    var height:String?
    var weight:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerViewConfig()
    }
    
    func pickerViewConfig() {
        for heightI in 160...190 {
            heightForPicker.append(String(heightI))
        }
        
        for weightI in 40...100 {
            weightForPicker.append(String(weightI))
        }
        
        height_weight_picker.delegate = self
        height_weight_picker.dataSource = self
    }

    @IBAction func checkBMI(_ sender: UIButton) {
        //bmi 계산
        var bmi:Float = 0.0
        if let w = weight, let h = height {
            bmi = (Float(w)! / pow(Float(h)!, 2))
        }
        
        //alert 띄우기
        showBmi(b: bmi)
    }
    
    func showBmi(b bmi: Float) {
        let bmiFormat = String(format: "%.1f", (bmi * 100))
        let alert = UIAlertController(title: "나의 BMI", message: "BMI : \(bmiFormat)", preferredStyle: .alert)
        
        let okBtn = UIAlertAction(title: "OK", style: .default) { action in
            print("OK")
        }
                                  
        alert.addAction(okBtn)
        
        self.present(alert, animated: true, completion: nil)
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return self.heightForPicker[row]
        case 1:
            return self.weightForPicker[row]
        default:
            return nil
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component {
        case 0:
            height = heightForPicker[row]
        case 1:
            weight = weightForPicker[row]
        default:
            break
        }
    }
}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return heightForPicker.count
        case 1:
            return weightForPicker.count
        default:
            return 0
        }
    }
}
