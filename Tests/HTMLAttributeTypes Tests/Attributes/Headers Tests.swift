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

@Suite("Headers Test")
struct HeadersTests {
    @Test("Headers attribute should be headers")
    func attribute() {
        #expect(Headers.attribute == "headers")
    }

    @Test("Headers array literal support")
    func arrayLiteral() {
        let headers: Headers = ["header1", "header2", "header3"]
        #expect(headers.rawValue == "header1 header2 header3")
    }
}
