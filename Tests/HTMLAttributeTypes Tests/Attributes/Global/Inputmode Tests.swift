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

@Suite("Inputmode Test")
struct InputmodeTests {
    @Test("Inputmode attribute should be inputmode")
    func attribute() {
        #expect(Inputmode.attribute == "inputmode")
    }

    @Test(
        "Inputmode cases description should match the spec",
        arguments: Inputmode.allCases
    )
    func cases(inputmode: Inputmode) {
        switch inputmode {
        case .none: #expect(inputmode.description == "none")
        case .text: #expect(inputmode.description == "text")
        case .decimal: #expect(inputmode.description == "decimal")
        case .numeric: #expect(inputmode.description == "numeric")
        case .tel: #expect(inputmode.description == "tel")
        case .search: #expect(inputmode.description == "search")
        case .email: #expect(inputmode.description == "email")
        case .url: #expect(inputmode.description == "url")
        default: ()
        }
    }

    @Test("Inputmode should conform to CaseIterable")
    func conformsToCaseIterable() {
        #expect(Inputmode.allCases.count == 8)
        #expect(Inputmode.allCases.contains(.none))
        #expect(Inputmode.allCases.contains(.text))
        #expect(Inputmode.allCases.contains(.decimal))
        #expect(Inputmode.allCases.contains(.numeric))
        #expect(Inputmode.allCases.contains(.tel))
        #expect(Inputmode.allCases.contains(.search))
        #expect(Inputmode.allCases.contains(.email))
        #expect(Inputmode.allCases.contains(.url))
    }

    @Test(
        "Inputmode rawValue should match description",
        arguments: Inputmode.allCases
    )
    func rawValueMatchesDescription(inputmode: Inputmode) {
        #expect(inputmode.rawValue == inputmode.description)
    }

    @Test(
        "Inputmode should be initializable from rawValue",
        arguments: [
            ("none", Inputmode.none),
            ("text", Inputmode.text),
            ("decimal", Inputmode.decimal),
            ("numeric", Inputmode.numeric),
            ("tel", Inputmode.tel),
            ("search", Inputmode.search),
            ("email", Inputmode.email),
            ("url", Inputmode.url),
        ]
    )
    func initializableFromRawValue(input: String, expected: Inputmode?) {
        #expect(Inputmode(rawValue: input) == expected)
    }
}
