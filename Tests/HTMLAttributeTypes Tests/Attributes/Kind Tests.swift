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

@Suite("Kind Test")
struct KindTests {
    @Test("Kind attribute should be kind")
    func attribute() {
        #expect(Kind.attribute == "kind")
    }

    @Test("Kind convenience properties")
    func convenienceProperties() {
        #expect(Kind.subtitles.rawValue == "subtitles")
        #expect(Kind.captions.rawValue == "captions")
        #expect(Kind.chapters.rawValue == "chapters")
        #expect(Kind.metadata.rawValue == "metadata")
    }
}
