//
//  BMI.swift
//  BMI Storyboard
//
//  Created by Jeevan Chandra Joshi on 11/01/23.
//

import UIKit

struct BMI {
    var value: Float?
    var description: String?
    var color: UIColor?

    mutating func calculate(height: Float, weight: Float) {
        let bmi = weight / pow(height, 2)
        if bmi < 18.5 {
            value = bmi
            description = "Underweight"
            color = UIColor(named: "underweight")
        } else if bmi < 24.9 {
            value = bmi
            description = "Normal"
            color = UIColor(named: "normalweight")
        } else {
            value = bmi
            description = "Overweight"
            color = UIColor(named: "overweight")
        }
    }
}
