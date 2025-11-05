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

@Suite("Enterkeyhint Test")
struct EnterkeyhintTests {
    @Test("Enterkeyhint attribute should be enterkeyhint")
    func attribute() {
        #expect(Enterkeyhint.attribute == "enterkeyhint")
    }

    @Test(
        "Enterkeyhint cases description should match the spec",
        arguments: Enterkeyhint.allCases
    )
    func cases(enterkeyhint: Enterkeyhint) {
        switch enterkeyhint {
        case .enter: #expect(enterkeyhint.description == "enter")
        case .done: #expect(enterkeyhint.description == "done")
        case .go: #expect(enterkeyhint.description == "go")
        case .next: #expect(enterkeyhint.description == "next")
        case .previous: #expect(enterkeyhint.description == "previous")
        case .search: #expect(enterkeyhint.description == "search")
        case .send: #expect(enterkeyhint.description == "send")
        default: ()
        }
    }

    @Test("Enterkeyhint should conform to CaseIterable")
    func conformsToCaseIterable() {
        #expect(Enterkeyhint.allCases.count == 7)
        #expect(Enterkeyhint.allCases.contains(.enter))
        #expect(Enterkeyhint.allCases.contains(.done))
        #expect(Enterkeyhint.allCases.contains(.go))
        #expect(Enterkeyhint.allCases.contains(.next))
        #expect(Enterkeyhint.allCases.contains(.previous))
        #expect(Enterkeyhint.allCases.contains(.search))
        #expect(Enterkeyhint.allCases.contains(.send))
    }

    @Test(
        "Enterkeyhint rawValue should match description",
        arguments: Enterkeyhint.allCases
    )
    func rawValueMatchesDescription(enterkeyhint: Enterkeyhint) {
        #expect(enterkeyhint.rawValue == enterkeyhint.description)
    }

    @Test(
        "Enterkeyhint should be initializable from rawValue",
        arguments: [
            ("enter", Enterkeyhint.enter),
            ("done", Enterkeyhint.done),
            ("go", Enterkeyhint.go),
            ("next", Enterkeyhint.next),
            ("previous", Enterkeyhint.previous),
            ("search", Enterkeyhint.search),
            ("send", Enterkeyhint.send),
        ]
    )
    func initializableFromRawValue(input: String, expected: Enterkeyhint?) {
        #expect(Enterkeyhint(rawValue: input) == expected)
    }
}
