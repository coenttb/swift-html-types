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

@Suite("ScriptType Test")
struct ScriptTypeTests {
    @Test("ScriptType attribute should be type")
    func attribute() {
        #expect(ScriptType.attribute == "type")
    }

    @Test("ScriptType should have predefined values")
    func predefinedValues() {
        #expect(ScriptType.module.rawValue == "module")
        #expect(ScriptType.importmap.rawValue == "importmap")
        #expect(ScriptType.speculationrules.rawValue == "speculationrules")
        #expect(ScriptType.json.rawValue == "application/json")
        #expect(ScriptType.text.rawValue == "text/plain")
    }
}
