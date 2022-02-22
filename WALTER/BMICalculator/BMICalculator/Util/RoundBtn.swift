//
//  RoundBtn.swift
//  BMICalculator
//
//  Created by Walter J on 2022/02/22.
//

import Foundation
import UIKit

@IBDesignable
class RoundBtn: UIButton {
    @IBInspectable var isRound: Bool = false {
        didSet {
            if isRound {
                self.layer.cornerRadius = 12.0
            }
        }
    }
}
