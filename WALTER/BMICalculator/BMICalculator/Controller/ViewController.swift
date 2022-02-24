//
//  ViewController.swift
//  BMICalculator
//
//  Created by Walter J on 2022/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var height_weight_picker: UIPickerView!
    var bmiBrain = BMIBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //PickerView Setting
        pickerViewConfig()
    }
    
    //PickerView Setting
    func pickerViewConfig() {
        bmiBrain.configPicker(startH: 140, endH: 200, startW: 40, endW: 100)
        
        height_weight_picker.delegate = self
        height_weight_picker.dataSource = self
    }
    
    //BMI 확인 버튼 액션
    @IBAction func checkBMI(_ sender: UIButton) {
        //계산
        bmiBrain.calculateBMI()
        
        //alert 띄우기
        showBmi()
    }
    
    //Alert 출력
    func showBmi() {
        let bmi = bmiBrain.getBMI()
        let advice = bmiBrain.getAdvice()
        let imoticon = bmiBrain.getImoticon()
        
        let alert = UIAlertController(title: "나의 BMI", message: """
                    \(bmi)
                    \(advice) \(imoticon)
                    """, preferredStyle: .alert)
        let okBtn = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okBtn)
        
        self.present(alert, animated: true, completion: nil)
    }
}

extension ViewController: UIPickerViewDelegate {
    //Picker 각 row 에 이름 배치
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return self.bmiBrain.getHeightWithString(row: row)
        case 1:
            return self.bmiBrain.getWeightWithString(row: row)
        default:
            return nil
        }
    }
    
    //선택 되었을 때
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component {
        case 0:
            self.bmiBrain.setHeight(row: row)
        case 1:
            self.bmiBrain.setWeight(row: row)
        default:
            break
        }
    }
}

//Picker 각 갯수
extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int { return 2 }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return self.bmiBrain.heightCount()
        case 1:
            return self.bmiBrain.weightCount()
        default:
            return 0
        }
    }
}
