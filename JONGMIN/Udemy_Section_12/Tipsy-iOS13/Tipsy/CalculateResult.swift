//
//  calculateResult.swift
//  Tipsy
//
//  Created by JONGMIN Youn on 2022/02/27.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct CalculateResult {

//    var result: Double = 0.0
//    var tip: Double = 0.0
//    var person: Int = 0
    
    var values = Values()
    
    var resultValue: String {
        get {
            return String(format: "%.2f", values.result)
        }
    }
    
    var settingMessage: String {
        get {
            return "Split between \(values.person) people, with \(String(format: "%.0f", values.tip))% tip" //
        }
    }
    
    mutating func calculateTotalPerPerson(totalbill: Double, tipPercents: Double, persons: Int) {
        values.result = ( totalbill * tipPercents ) / Double(persons)
        
        values.tip = (tipPercents - 1.0) * 100
        values.person = persons
    }
}
