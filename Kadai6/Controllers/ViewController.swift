//
//  ViewController.swift
//  Kadai6
//
//  Created by Rin on 2021/08/09.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var targetValueLabel: UILabel!
    @IBOutlet private weak var answerValueSlider: UISlider!

    let sliderGameModel = SliderGame()

    override func viewDidLoad() {
        super.viewDidLoad()
        targetValueLabel.text = sliderGameModel.resetGame()
        answerValueSlider.value = 0.5
    }

    @IBAction private func didTapSubmitAnswerValueButton(_ sender: UIButton) {
        let answerValue = Int(answerValueSlider.value * 100)
        let isCorrectAnswer = sliderGameModel.checkAnswer(answerValue: answerValue)

        if isCorrectAnswer {
            showGameResultAlert(message: "あたり！\nあなたの値: \(answerValue)")
        } else {
            showGameResultAlert(message: "はずれ！\nあなたの値: \(answerValue)")
        }
    }

    private func showGameResultAlert(message: String) {
        let alert = UIAlertController(title: "結果", message: message, preferredStyle: .alert)
        let resetGame = UIAlertAction(title: "再挑戦", style: .default) { [self] _ in
            targetValueLabel.text = sliderGameModel.resetGame()
            answerValueSlider.value = 0.5
        }
        alert.addAction(resetGame)
        present(alert, animated: true)
    }
}
