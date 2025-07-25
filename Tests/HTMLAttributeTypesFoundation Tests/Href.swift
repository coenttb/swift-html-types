//
//  File.swift
//  swift-html-types
//
//  Created by Coen ten Thije Boonkkamp on 25/07/2025.
//

import Foundation
import HTMLAttributeTypesFoundation
import Testing

@Suite("Href Test")
struct HrefTests {
    
    @Test("Href URL method")
    func urlMethod() {
        let url = URL(string: "https://example.com")!
        let href = Href.url(url)
        #expect(href.rawValue == "https://example.com")
    }
}
