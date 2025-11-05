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

import HTMLAttributeTypes
import Testing

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
    import Foundation
#endif

@Suite("Hidden Test")
struct HiddenTests {
    @Test("Hidden attribute should be hidden")
    func attribute() {
        #expect(Hidden.attribute == "hidden")
    }

    @Test(
        "Hidden cases description should match the spec",
        arguments: Hidden.allCases
    )
    func cases(hidden: Hidden) {
        switch hidden {
        case .hidden: #expect(hidden.description == "hidden")
        case .untilFound: #expect(hidden.description == "until-found")
        case .empty: #expect(hidden.description == "")
        default: ()
        }
    }

    @Test("Hidden should conform to CaseIterable")
    func conformsToCaseIterable() {
        #expect(Hidden.allCases.count == 3)
        #expect(Hidden.allCases.contains(.hidden))
        #expect(Hidden.allCases.contains(.untilFound))
    }

    @Test(
        "Hidden rawValue should match description",
        arguments: Hidden.allCases
    )
    func rawValueMatchesDescription(hidden: Hidden) {
        #expect(hidden.rawValue == hidden.description)
    }

    @Test(
        "Hidden should be initializable from rawValue",
        arguments: [
            ("hidden", Hidden.hidden),
            ("until-found", Hidden.untilFound),

        ]
    )
    func initializableFromRawValue(input: String, expected: Hidden?) {
        #expect(Hidden(rawValue: input) == expected)
    }

    @Test("Empty Hidden should use default mode")
    func emptyInitialization() {
        let hiddenDefault = Hidden()
        #expect(hiddenDefault == .hidden)
    }
}
