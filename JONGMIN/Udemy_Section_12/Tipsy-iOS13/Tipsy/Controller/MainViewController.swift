//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {


    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var person: UILabel!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    
    var tipPercents: Double = 0.0
    
    var calculateResult = CalculateResult()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func typeBillTotal(_ sender: UITextField) {
        billTextField.text = sender.text
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        billTextField.endEditing(true)
        
        sender.isSelected = true
        
        switch sender {
        case zeroPctButton:
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            tipPercents = 1.0
        case tenPctButton:
            zeroPctButton.isSelected = false
            twentyPctButton.isSelected = false
            tipPercents = 1.1
        case twentyPctButton:
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            tipPercents = 1.2
        default:
            print("no button selected")
        }
        
    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        person.text = String(Int(sender.value))
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        //let totalBill: Double = Double(billTextField.text!)! //아무것도 안들어 갔을 때, 처리 필요
        var totalBill = 0.0
        let bill = billTextField.text ?? "0"
        let splitPerson: Int = Int(person.text!) ?? 2
        
        if bill == "" {
            billTextField.placeholder = "please enter bills!"
            
            //실행 시간 지연
//            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
//                self.billTextField.placeholder = "enter here"
//            }
            
            billTextField.alpha = 0
            
            UIView.animate(withDuration: 1.0) {
                self.billTextField.alpha = 1
            }
            return
        } else {
            totalBill = Double(bill)!
            calculateResult.calculateTotalPerPerson(totalbill: totalBill, tipPercents: tipPercents, persons: splitPerson)
        }
        
        self.performSegue(withIdentifier: "goToResultView", sender: self) //segue 걸고 넘어가는 코드
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResultView" {
            let destinationVC = segue.destination as! ResultViewController
            //destinationVC = ResultViewController
            
            destinationVC.resultValue = calculateResult.resultValue //result
            destinationVC.settingsValue = calculateResult.settingMessage //"Split between \(person) people, with \(tipPercents) tip."
            
        }
    }
}

	
