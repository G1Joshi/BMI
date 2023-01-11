//
//  CalculateViewController.swift
//  BMI Storyboard
//
//  Created by Jeevan Chandra Joshi on 10/01/23.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!

    var bmi = BMI()
    var height: Float = 1.5, weight: Float = 100.0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as! ResultViewController
        resultViewController.bmi = bmi
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        height = sender.value
        heightLabel.text = String(format: "%.2fm", sender.value)
    }

    @IBAction func weightSlider(_ sender: UISlider) {
        weight = sender.value
        weightLabel.text = String(format: "%.0fkg", sender.value)
    }

    @IBAction func calculateResult(_ sender: UIButton) {
        bmi.calculate(height: height, weight: weight)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
}
