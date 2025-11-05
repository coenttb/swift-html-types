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

@Suite("Title Test")
struct TitleTests {
    @Test("Title attribute should be title")
    func attribute() {
        #expect(Title.attribute == "title")
    }

    @Test("Title should store and return its value")
    func valueStorage() {
        let title = Title("Helpful information")
        #expect(title.rawValue == "Helpful information")
    }

    @Test("Title description should return its value")
    func description() {
        let title = Title("Click to submit the form")
        #expect(title.description == "Click to submit the form")
    }

    @Test("Title should be initializable with string literal")
    func stringLiteralInitialization() {
        let title: Title = "Hover for more details"
        #expect(title.rawValue == "Hover for more details")
    }
}
