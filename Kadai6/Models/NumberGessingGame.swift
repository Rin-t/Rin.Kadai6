//
//  SliderGame.swift
//  Kadai6
//
//  Created by Rin on 2021/08/09.
//

import Foundation

final class NumberGessingGame {
    private(set) var targetValue: Int?
    let range = 1...100

    // リセットの処理のみにする
    // リセット後の値はControllerからプロパティを通して取得してもらう
    func resetGame() {
        targetValue = Int.random(in: range)
    }

    // bool値を返す時はisが先頭だと良い
    func isCorrectAnswer(answerValue: Int) -> Bool {
        if targetValue == answerValue {
            return true
        } else {
            return false
        }
    }
}
