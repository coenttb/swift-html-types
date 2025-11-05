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

@Suite("Integrity Test")
struct IntegrityTests {
    @Test("Integrity attribute should be integrity")
    func attribute() {
        #expect(Integrity.attribute == "integrity")
    }

    @Test("Integrity hash factory methods")
    func hashFactoryMethods() {
        let hash = "oqVuAfXRKap7fdgcCY5uykM6+R9GqQ8K/uxy9rx7HNQ"
        #expect(Integrity.sha256(hash).rawValue == "sha256-\(hash)")
        #expect(Integrity.sha384(hash).rawValue == "sha384-\(hash)")
        #expect(Integrity.sha512(hash).rawValue == "sha512-\(hash)")
    }
}
