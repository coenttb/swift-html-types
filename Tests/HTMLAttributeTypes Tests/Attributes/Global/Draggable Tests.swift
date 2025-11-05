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

@Suite("Draggable Test")
struct DraggableTests {
    @Test("Draggable attribute should be draggable")
    func attribute() {
        #expect(Draggable.attribute == "draggable")
    }

    @Test(
        "Draggable cases description should match the spec",
        arguments: Draggable.allCases
    )
    func cases(draggable: Draggable) {
        switch draggable {
        case .true: #expect(draggable.description == "true")
        case .false: #expect(draggable.description == "false")
        case .auto: #expect(draggable.description == "auto")
        default: ()
        }
    }

    @Test("Draggable should conform to CaseIterable")
    func conformsToCaseIterable() {
        #expect(Draggable.allCases.count == 3)
        #expect(Draggable.allCases.contains(.true))
        #expect(Draggable.allCases.contains(.false))
        #expect(Draggable.allCases.contains(.auto))
    }

    @Test(
        "Draggable rawValue should match description",
        arguments: Draggable.allCases
    )
    func rawValueMatchesDescription(draggable: Draggable) {
        #expect(draggable.rawValue == draggable.description)
    }

    @Test(
        "Draggable should be initializable from rawValue",
        arguments: [
            ("true", Draggable.true),
            ("false", Draggable.false),
            ("auto", Draggable.auto),
        ]
    )
    func initializableFromRawValue(input: String, expected: Draggable?) {
        #expect(Draggable(rawValue: input) == expected)
    }
}
