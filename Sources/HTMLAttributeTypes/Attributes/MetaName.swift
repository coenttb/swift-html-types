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

/// Standard metadata names for the name attribute.
///
/// These values are commonly used with the name attribute to provide
/// various types of document-level metadata.
@dynamicMemberLookup
public struct MetaName: HTMLStringAttribute {
    @inlinable public static var attribute: String { "name" }

    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension MetaName {
    /// Name of the application that generated the document.
    @inlinable public static var application: Self { "application-name" }

    /// Name of the document's author.
    @inlinable public static var author: Self { "author" }

    /// Summary of the page's content.
    @inlinable public static var description: Self { "description" }

    /// Software that generated the document.
    @inlinable public static var generator: Self { "generator" }

    /// Comma-separated list of keywords relevant to the page.
    @inlinable public static var keywords: Self { "keywords" }

    /// Referrer policy for links away from the document.
    @inlinable public static var referrer: Self { "referrer" }

    /// Suggested color for customizing browser UI elements.
    @inlinable public static var themeColor: Self { "theme-color" }

    /// Instructions for search engine crawlers.
    @inlinable public static var robots: Self { "robots" }

    /// Settings for the visual viewport on mobile devices.
    @inlinable public static var viewport: Self { "viewport" }
}
