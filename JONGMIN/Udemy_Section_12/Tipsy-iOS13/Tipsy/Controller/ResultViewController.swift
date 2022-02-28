//
//  ResultViewController.swift
//  Tipsy
//
//  Created by JONGMIN Youn on 2022/02/27.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var resultValue: String?
    var settingsValue: String?

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        totalLabel.text = resultValue
        settingsLabel.text = settingsValue
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil) //되돌아가기
    }
}
