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

@Suite("ReferrerPolicy Test")
struct ReferrerPolicyTests {
    @Test("ReferrerPolicy attribute should be referrerpolicy")
    func attribute() {
        #expect(ReferrerPolicy.attribute == "referrerpolicy")
    }

    @Test("ReferrerPolicy convenience properties")
    func convenienceProperties() {
        #expect(ReferrerPolicy.noReferrer.rawValue == "no-referrer")
        #expect(ReferrerPolicy.noReferrerWhenDowngrade.rawValue == "no-referrer-when-downgrade")
        #expect(ReferrerPolicy.origin.rawValue == "origin")
        #expect(ReferrerPolicy.originWhenCrossOrigin.rawValue == "origin-when-cross-origin")
        #expect(ReferrerPolicy.sameOrigin.rawValue == "same-origin")
        #expect(ReferrerPolicy.strictOrigin.rawValue == "strict-origin")
        #expect(
            ReferrerPolicy.strictOriginWhenCrossOrigin.rawValue == "strict-origin-when-cross-origin"
        )
        #expect(ReferrerPolicy.unsafeUrl.rawValue == "unsafe-url")
    }
}
