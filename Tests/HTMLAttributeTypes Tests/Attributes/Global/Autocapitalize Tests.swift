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

@Suite("Autocapitalize Test")
struct AutocapitalizeTests {
    @Test("Autocapitalize attribute should be autocapitalize")
    func attribute() {
        #expect(Autocapitalize.attribute == "autocapitalize")
    }

    @Test(
        "Autocapitalize cases description should match the spec",
        arguments: Autocapitalize.allCases
    )
    func cases(autocapitalize: Autocapitalize) {
        switch autocapitalize {
        case .none: #expect(autocapitalize.description == "none")
        case .off: #expect(autocapitalize.description == "off")
        case .sentences: #expect(autocapitalize.description == "sentences")
        case .on: #expect(autocapitalize.description == "on")
        case .words: #expect(autocapitalize.description == "words")
        case .characters: #expect(autocapitalize.description == "characters")
        default: ()
        }
    }

    @Test("Autocapitalize should conform to CaseIterable")
    func conformsToCaseIterable() {
        #expect(Autocapitalize.allCases.count == 6)
        #expect(Autocapitalize.allCases.contains(.none))
        #expect(Autocapitalize.allCases.contains(.off))
        #expect(Autocapitalize.allCases.contains(.sentences))
        #expect(Autocapitalize.allCases.contains(.on))
        #expect(Autocapitalize.allCases.contains(.words))
        #expect(Autocapitalize.allCases.contains(.characters))
    }

    @Test(
        "Autocapitalize rawValue should match description",
        arguments: Autocapitalize.allCases
    )
    func rawValueMatchesDescription(autocapitalize: Autocapitalize) {
        #expect(autocapitalize.rawValue == autocapitalize.description)
    }

    @Test(
        "Autocapitalize should be initializable from rawValue",
        arguments: [
            ("none", Autocapitalize.none),
            ("off", .off),
            ("sentences", .sentences),
            ("on", .on),
            ("words", .words),
            ("characters", .characters),
        ]
    )
    func initializableFromRawValue(input: String, expected: Autocapitalize?) {
        #expect(Autocapitalize(rawValue: input) == expected)
    }
}
