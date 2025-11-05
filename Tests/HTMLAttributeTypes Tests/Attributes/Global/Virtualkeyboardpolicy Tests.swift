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

@Suite("Virtualkeyboardpolicy Test")
struct VirtualkeyboardpolicyTests {
    @Test("Virtualkeyboardpolicy attribute should be virtualkeyboardpolicy")
    func attribute() {
        #expect(Virtualkeyboardpolicy.attribute == "virtualkeyboardpolicy")
    }

    @Test("Virtualkeyboardpolicy description should match the spec")
    func description() {
        #expect(Virtualkeyboardpolicy.auto.description == "auto")
        #expect(Virtualkeyboardpolicy.manual.description == "manual")
    }
}
