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

    private let gameModel = NumberGessingGame()

    override func viewDidLoad() {
        super.viewDidLoad()
        // sliderの範囲を設定する
        answerValueSlider.minimumValue = Float(gameModel.range.lowerBound)
        answerValueSlider.maximumValue = Float(gameModel.range.upperBound)
        reset()
    }

    @IBAction private func didTapSubmitAnswerValueButton(_ sender: UIButton) {
        let answerValue = Int(answerValueSlider.value)
        let isCorrectAnswer = gameModel.isCorrectAnswer(answerValue: answerValue)

        if isCorrectAnswer {
            showGameResultAlert(message: "あたり！\nあなたの値: \(answerValue)")
        } else {
            showGameResultAlert(message: "はずれ！\nあなたの値: \(answerValue)")
        }
    }

    private func showGameResultAlert(message: String) {
        let alert = UIAlertController(title: "結果", message: message, preferredStyle: .alert)
        // [weak self]を使う
        let resetGame = UIAlertAction(title: "再挑戦", style: .default) { [weak self] _ in
            self?.reset()
        }
        alert.addAction(resetGame)
        present(alert, animated: true)
    }

    private func reset() {
         gameModel.resetGame()
         targetValueLabel.text = gameModel.targetValue.map { String($0) } ?? ""
         answerValueSlider.value = Float((gameModel.range.lowerBound + gameModel.range.upperBound) / 2)
     }
}
