// ===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
// ===----------------------------------------------------------------------===//

import Foundation
import HTMLAttributeTypes
import Testing

@Suite("Step Test")
struct StepTests {
    @Test("Step attribute should be step")
    func attribute() {
        #expect(Step.attribute == "step")
    }

    @Test("Step should support enum cases")
    func enumCases() {
        #expect(Step.any.rawValue == "any")
        #expect(Step.value(1.5).rawValue == "1.5")
    }

    @Test("Step should support integer literal")
    func integerLiteral() {
        let step: Step = 5
        #expect(step.rawValue == "5.0")
    }

    @Test("Step should support float literal")
    func floatLiteral() {
        let step: Step = 0.1
        #expect(step.rawValue == "0.1")
    }

    @Test("Step should have predefined convenience values")
    func convenienceValues() {
        #expect(Step.integer.rawValue == "1.0")
        #expect(Step.tenth.rawValue == "0.1")
        #expect(Step.hundredth.rawValue == "0.01")
        #expect(Step.thousandth.rawValue == "0.001")
        #expect(Step.money.rawValue == "0.01")
        #expect(Step.weekly.rawValue == "7.0")
    }
}
