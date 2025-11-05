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

@Suite("Style Test")
struct StyleTests {
    @Test("Style attribute should be style")
    func attribute() {
        #expect(Style.attribute == "style")
    }

    @Test("Style should store and return its value")
    func valueStorage() {
        let style = Style("color: red; font-size: 14px;")
        #expect(style.rawValue == "color: red; font-size: 14px;")
    }

    @Test("Style description should return its value")
    func description() {
        let style = Style("margin: 10px; padding: 5px;")
        #expect(style.description == "margin: 10px; padding: 5px;")
    }

    @Test("Style should be initializable with string literal")
    func stringLiteralInitialization() {
        let style: Style = "background-color: blue;"
        #expect(style.rawValue == "background-color: blue;")
    }

    @Test("Style should support dictionary-based initialization")
    func dictionaryInitialization() {
        let style = Style([
            "color": "red",
            "font-size": "14px",
        ])

        #expect(style.description.contains("color: red"))
        #expect(style.description.contains("font-size: 14px"))
    }
}
