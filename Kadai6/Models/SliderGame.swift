//
//  SliderGame.swift
//  Kadai6
//
//  Created by Rin on 2021/08/09.
//

import Foundation

final class SliderGame {
    var targetValue: Int?

    func resetGame() -> String {
        targetValue = Int.random(in: 1...100)
        return String(targetValue ?? 50)
    }

    func checkAnswer(answerValue: Int) -> Bool {
        if targetValue == answerValue {
            return true
        } else {
            return false
        }
    }
}
