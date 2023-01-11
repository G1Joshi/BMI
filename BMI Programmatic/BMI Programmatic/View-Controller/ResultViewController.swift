//
//  ResultViewController.swift
//  BMI Programmatic
//
//  Created by Jeevan Chandra Joshi on 11/01/23.
//

import UIKit

class ResultViewController: UIViewController {
    let resultBackground = UIImageView()
    let resultStackView = UIStackView()
    let resultLabelView = UILabel()
    let resultValueView = UILabel()
    let descriptionView = UILabel()
    let recalculateButton = UIButton()

    var bmi: BMI?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupResultUi()
        setupResultConstraint()
        view.backgroundColor = bmi?.color
        resultValueView.text = String(format: "%.1f", bmi?.value ?? 0)
        descriptionView.text = bmi?.description
    }

    func setupResultUi() {
        view.backgroundColor = UIColor(named: "Background")

        view.addSubview(resultBackground)
        view.addSubview(resultStackView)
        view.addSubview(recalculateButton)

        resultStackView.addArrangedSubview(resultLabelView)
        resultStackView.addArrangedSubview(resultValueView)
        resultStackView.addArrangedSubview(descriptionView)

        resultBackground.image = UIImage(named: "result_background")
        resultBackground.contentMode = .scaleAspectFill

        resultStackView.axis = .vertical
        resultStackView.alignment = .fill
        resultStackView.distribution = .fill
        resultStackView.spacing = 10

        resultLabelView.text = "YOUR RESULT"
        resultLabelView.textColor = .white
        resultLabelView.font = .systemFont(ofSize: 40)
        resultLabelView.textAlignment = .center

        resultValueView.text = "20.5"
        resultValueView.textColor = .white
        resultValueView.font = .boldSystemFont(ofSize: 80)
        resultValueView.textAlignment = .center

        descriptionView.text = "Normal"
        descriptionView.textColor = .white
        descriptionView.font = .systemFont(ofSize: 40)
        descriptionView.textAlignment = .center

        recalculateButton.setTitle("RECALCULATE", for: .normal)
        recalculateButton.setTitleColor(UIColor(named: "Background"), for: .normal)
        recalculateButton.titleLabel?.font = .systemFont(ofSize: 20)
        recalculateButton.backgroundColor = .white
        recalculateButton.addAction(UIAction(handler: { [self] _ in
            dismiss(animated: true)
        }), for: .touchUpInside)
    }

    func setupResultConstraint() {
        resultBackground.translatesAutoresizingMaskIntoConstraints = false
        resultStackView.translatesAutoresizingMaskIntoConstraints = false
        recalculateButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            resultBackground.topAnchor.constraint(equalTo: view.topAnchor),
            resultBackground.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            resultBackground.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            resultBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor),

            resultStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            resultStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),

            recalculateButton.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            recalculateButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            recalculateButton.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),

            recalculateButton.heightAnchor.constraint(equalToConstant: 60),
        ])
    }
}
