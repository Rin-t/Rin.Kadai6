//
//  Kadai6Tests.swift
//  Kadai6Tests
//
//  Created by Rin on 2021/08/09.
//

import XCTest
@testable import Kadai6

class Kadai6Tests: XCTestCase {
    let sliderGameModel = SliderGame()

    func testCorrectAnswer() {
        sliderGameModel.targetValue  = 10
        let isCorrectAnswer = sliderGameModel.checkAnswer(answerValue: 10)
        XCTAssertEqual(isCorrectAnswer, true)
    }

    func testWrongAnswer() {
        sliderGameModel.targetValue = 10
        let isCorrectAnswer = sliderGameModel.checkAnswer(answerValue: 15)
        XCTAssertEqual(isCorrectAnswer, false)
    }
}
