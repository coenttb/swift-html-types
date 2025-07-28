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

@Suite("Download Test")
struct DownloadTests {
    @Test("Download attribute should be download")
    func attribute() {
        #expect(Download.attribute == "download")
    }

    @Test("Download boolean literal support")
    func booleanLiteral() {
        let downloadTrue: Download = true
        let downloadFalse: Download = false
        #expect(downloadTrue.shouldInclude == true)
        #expect(downloadFalse.shouldInclude == false)
    }

    @Test("Download string literal support")
    func stringLiteral() {
        let download: Download = "document.pdf"
        #expect(download.description == "document.pdf")
        #expect(download.shouldInclude == true)
    }

    @Test("Download with filename")
    func withFilename() {
        let download = Download("report.pdf")
        #expect(download.description == "report.pdf")
        #expect(download.shouldInclude == true)
    }

    @Test("Download boolean form")
    func booleanForm() {
        let downloadTrue = Download(true)
        let downloadFalse = Download(false)
        #expect(downloadTrue.shouldInclude == true)
        #expect(downloadFalse.shouldInclude == false)
        #expect(downloadTrue.description == "")
        #expect(downloadFalse.description == "")
    }
}
