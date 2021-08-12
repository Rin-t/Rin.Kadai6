//
//  NumberGuessingGame.swift
//  Kadai6
//
//  Created by Rin on 2021/08/09.
//

import Foundation

final class NumberGuessingGame {
    let range = 1...100

    private(set) var targetValue: Int?

    func resetGame() {
        targetValue = Int.random(in: range)
    }

    func isCorrect(answerValue: Int) -> Bool {
        if targetValue == answerValue {
            return true
        } else {
            return false
        }
    }
}
