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

@Suite("Placeholder Test")
struct PlaceholderTests {
    @Test("Placeholder attribute should be placeholder")
    func attribute() {
        #expect(Placeholder.attribute == "placeholder")
    }

    @Test("Placeholder convenience properties")
    func convenienceProperties() {
        #expect(Placeholder.email.rawValue == "email")
        #expect(Placeholder.phone.rawValue == "phone")
        #expect(Placeholder.name.rawValue == "name")
        #expect(Placeholder.search.rawValue == "search")
        #expect(Placeholder.url.rawValue == "url")
    }
}
