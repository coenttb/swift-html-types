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

@Suite("EncType Test")
struct EncTypeTests {
    @Test("EncType attribute should be enctype")
    func attribute() {
        #expect(EncType.attribute == "enctype")
    }

    @Test("EncType convenience properties")
    func convenienceProperties() {
        #expect(EncType.urlEncoded.rawValue == "application/x-www-form-urlencoded")
        #expect(EncType.multipartFormData.rawValue == "multipart/form-data")
        #expect(EncType.textPlain.rawValue == "text/plain")
    }
}
