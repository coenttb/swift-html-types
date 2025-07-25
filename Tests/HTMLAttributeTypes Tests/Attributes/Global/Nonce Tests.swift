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

@Suite("Nonce Test")
struct NonceTests {
    @Test("Nonce attribute should be nonce")
    func attribute() {
        #expect(Nonce.attribute == "nonce")
    }

    @Test("Nonce should store and return its value")
    func valueStorage() {
        let nonce = Nonce("abc123xyz789")
        #expect(nonce.rawValue == "abc123xyz789")
    }

    @Test("Nonce description should return its value")
    func description() {
        let nonce = Nonce("xyz987abc321")
        #expect(nonce.description == "xyz987abc321")
    }

    @Test("Nonce should be initializable with string literal")
    func stringLiteralInitialization() {
        let nonce: Nonce = "pqr456mno789"
        #expect(nonce.rawValue == "pqr456mno789")
    }
}
