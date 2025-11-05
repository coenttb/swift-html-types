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

/// Represents the `cite` attribute, which contains a URL that designates a source document or message for the information quoted.
///
/// The `cite` attribute is used on elements like `<blockquote>`, `<q>`, `<ins>`, and `<del>` to indicate the source of the quoted material.
///
/// ## Usage Notes
///
/// - The value should be a valid URL pointing to the source document.
/// - This attribute is purely advisory, and most browsers don't display it in any special way.
///
/// ## Examples
///
/// ```html
/// <blockquote cite="https://example.com/source">Quoted text</blockquote>
/// ```
@dynamicMemberLookup
public struct Cite: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "cite" }

    /// The attribute value (URL to the source document)
    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}
