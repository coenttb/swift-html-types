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

@Suite("Contenteditable Test")
struct ContenteditableTests {
    @Test("Contenteditable attribute should be contenteditable")
    func attribute() {
        #expect(Contenteditable.attribute == "contenteditable")
    }

    @Test(
        "Contenteditable cases description should match the spec",
        arguments: Contenteditable.allCases
    )
    func cases(contenteditable: Contenteditable) {
        switch contenteditable {
        case .true: #expect(contenteditable.description == "true")
        case .false: #expect(contenteditable.description == "false")
        case .plaintextOnly: #expect(contenteditable.description == "plaintext-only")
        case .empty: #expect(contenteditable.description == "")
        default: ()
        }
    }

    @Test("Contenteditable should conform to CaseIterable")
    func conformsToCaseIterable() {
        #expect(Contenteditable.allCases.count == 4)
        #expect(Contenteditable.allCases.contains(.true))
        #expect(Contenteditable.allCases.contains(.false))
        #expect(Contenteditable.allCases.contains(.plaintextOnly))
        #expect(Contenteditable.allCases.contains(.empty))
    }

    @Test(
        "Contenteditable rawValue should match description",
        arguments: Contenteditable.allCases
    )
    func rawValueMatchesDescription(contenteditable: Contenteditable) {
        #expect(contenteditable.rawValue == contenteditable.description)
    }

    @Test(
        "Contenteditable should be initializable from rawValue",
        arguments: [
            ("true", Contenteditable.true),
            ("false", Contenteditable.false),
            ("plaintext-only", Contenteditable.plaintextOnly),
        ]
    )
    func initializableFromRawValue(input: String, expected: Contenteditable?) {
        #expect(Contenteditable(rawValue: input) == expected)
    }
}
