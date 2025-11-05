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

@Suite("FormEncType Test")
struct FormEncTypeTests {
    @Test("FormEncType attribute should be formenctype")
    func attribute() {
        #expect(FormEncType.attribute == "formenctype")
    }

    @Test("FormEncType should have predefined values")
    func predefinedValues() {
        #expect(FormEncType.urlEncoded.rawValue == "application/x-www-form-urlencoded")
        #expect(FormEncType.multipartFormData.rawValue == "multipart/form-data")
        #expect(FormEncType.textPlain.rawValue == "text/plain")
    }
}
