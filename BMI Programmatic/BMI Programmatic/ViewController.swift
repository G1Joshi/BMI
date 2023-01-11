//
//  ViewController.swift
//  BMI Programmatic
//
//  Created by Jeevan Chandra Joshi on 10/01/23.
//

import UIKit

class ViewController: UIViewController {
    let background = UIImageView()
    let stackView = UIStackView()
    let labelView = UILabel()
    let heightStackView = UIStackView()
    let heightLabel = UILabel()
    let heightValueLabel = UILabel()
    let heightSlider = UISlider()
    let weightStackView = UIStackView()
    let weightLabel = UILabel()
    let weightValueLabel = UILabel()
    let weightSlider = UISlider()
    let calculateButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUi()
        setupConstraint()
    }

    func setupUi() {
        view.addSubview(background)
        view.addSubview(stackView)

        stackView.addArrangedSubview(labelView)
        stackView.addArrangedSubview(heightStackView)
        stackView.addArrangedSubview(heightSlider)
        stackView.addArrangedSubview(weightStackView)
        stackView.addArrangedSubview(weightSlider)
        stackView.addArrangedSubview(calculateButton)

        heightStackView.addArrangedSubview(heightLabel)
        heightStackView.addArrangedSubview(heightValueLabel)
        weightStackView.addArrangedSubview(weightLabel)
        weightStackView.addArrangedSubview(weightValueLabel)

        background.image = UIImage(named: "calculate_background")
        background.contentMode = .scaleAspectFill

        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        stackView.spacing = 10

        labelView.text = "CALCULATE YOUR BMI"
        labelView.textColor = .darkGray
        labelView.font = .boldSystemFont(ofSize: 40)
        labelView.textAlignment = .center
        labelView.numberOfLines = 2

        heightStackView.axis = .horizontal
        heightStackView.alignment = .fill
        heightStackView.distribution = .equalSpacing

        heightSlider.value = 0.5
        heightSlider.maximumValue = 1
        heightSlider.minimumTrackTintColor = UIColor(named: "Background")
        heightSlider.thumbTintColor = UIColor(named: "Background")

        heightLabel.text = "Height"
        heightLabel.font = .systemFont(ofSize: 20)
        heightLabel.textColor = .darkGray

        heightValueLabel.text = "1.5m"
        heightValueLabel.font = .systemFont(ofSize: 20)
        heightValueLabel.textColor = .darkGray

        weightStackView.axis = .horizontal
        weightStackView.alignment = .fill
        weightStackView.distribution = .equalSpacing

        weightSlider.value = 0.5
        weightSlider.maximumValue = 1
        weightSlider.minimumTrackTintColor = UIColor(named: "Background")
        weightSlider.thumbTintColor = UIColor(named: "Background")

        weightLabel.text = "Weight"
        weightLabel.font = .systemFont(ofSize: 20)
        weightLabel.textColor = .darkGray

        weightValueLabel.text = "100kg"
        weightValueLabel.font = .systemFont(ofSize: 20)
        weightValueLabel.textColor = .darkGray

        calculateButton.setTitle("CALCULATE", for: .normal)
        calculateButton.setTitleColor(.white, for: .normal)
        calculateButton.titleLabel?.font = .systemFont(ofSize: 20)
        calculateButton.backgroundColor = UIColor(named: "Background")
    }

    func setupConstraint() {
        background.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            background.topAnchor.constraint(equalTo: view.topAnchor),
            background.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            background.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            background.leadingAnchor.constraint(equalTo: view.leadingAnchor),

            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),

            heightStackView.heightAnchor.constraint(equalToConstant: 25),
            heightSlider.heightAnchor.constraint(equalToConstant: 60),

            weightStackView.heightAnchor.constraint(equalToConstant: 25),
            weightSlider.heightAnchor.constraint(equalToConstant: 60),

            calculateButton.heightAnchor.constraint(equalToConstant: 60),
        ])
    }
}
