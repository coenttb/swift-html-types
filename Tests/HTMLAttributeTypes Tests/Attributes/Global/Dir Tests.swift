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

@Suite("Dir Test")
struct DirTests {
    @Test("Dir attribute should be dir")
    func attribute() {
        #expect(Dir.attribute == "dir")
    }

    @Test(
        "Dir cases description should match the spec",
        arguments: Dir.allCases
    )
    func cases(dir: Dir) {
        switch dir {
        case .ltr: #expect(dir.description == "ltr")
        case .rtl: #expect(dir.description == "rtl")
        case .auto: #expect(dir.description == "auto")
        default: ()
        }
    }

    @Test("Dir should conform to CaseIterable")
    func conformsToCaseIterable() {
        #expect(Dir.allCases.count == 3)
        #expect(Dir.allCases.contains(.ltr))
        #expect(Dir.allCases.contains(.rtl))
        #expect(Dir.allCases.contains(.auto))
    }

    @Test(
        "Dir rawValue should match description",
        arguments: Dir.allCases
    )
    func rawValueMatchesDescription(dir: Dir) {
        #expect(dir.rawValue == dir.description)
    }

    @Test(
        "Dir should be initializable from rawValue",
        arguments: [
            ("ltr", Dir.ltr),
            ("rtl", Dir.rtl),
            ("auto", Dir.auto),
        ]
    )
    func initializableFromRawValue(input: String, expected: Dir?) {
        #expect(Dir(rawValue: input) == expected)
    }
}
