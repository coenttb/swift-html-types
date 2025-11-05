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

@Suite("AcceptCharset Test")
struct AcceptCharsetTests {
    @Test("AcceptCharset attribute should be accept-charset")
    func attribute() {
        #expect(AcceptCharset.attribute == "accept-charset")
    }

    @Test("AcceptCharset convenience properties")
    func convenienceProperties() {
        #expect(AcceptCharset.utf8.rawValue == "UTF-8")
        #expect(AcceptCharset.latin1.rawValue == "ISO-8859-1")
        #expect(AcceptCharset.ascii.rawValue == "US-ASCII")
        #expect(AcceptCharset.windows1252.rawValue == "windows-1252")
        #expect(AcceptCharset.utf8AndLatin1.rawValue == "UTF-8,ISO-8859-1")
    }
}
