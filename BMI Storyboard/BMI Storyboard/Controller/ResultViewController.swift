//
//  ResultViewController.swift
//  BMI Storyboard
//
//  Created by Jeevan Chandra Joshi on 11/01/23.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var resultValue: UILabel!
    @IBOutlet var resultDescription: UILabel!

    var bmi: BMI?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = bmi?.color
        resultValue.text = String(format: "%.1f", bmi?.value ?? 0)
        resultDescription.text = bmi?.description
    }

    @IBAction func recalculateBmi(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
