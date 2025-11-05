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

@Suite("DataAttribute Test")
struct DataAttributeTests {
    @Test("DataAttribute prefix should be data-")
    func prefix() {
        #expect(DataAttribute.prefix == "data-")
    }

    @Test("DataAttribute should initialize with name and value")
    func initialization() {
        let dataAttr = DataAttribute(name: "user-id", value: "123")
        #expect(dataAttr.name == "user-id")
        #expect(dataAttr.value == "123")
    }

    @Test("DataAttribute attribute should combine prefix and name")
    func attribute() {
        let dataAttr = DataAttribute(name: "user-id", value: "123")
        #expect(dataAttr.attributeName == "data-user-id")
    }

    @Test("DataAttribute description should match the value")
    func description() {
        let dataAttr = DataAttribute(name: "user-id", value: "123")
        #expect(dataAttr.description == "123")
    }
}
