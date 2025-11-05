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

/// Defines a unique identifier for an HTML element.
///
/// The `id` global attribute defines a unique identifier (ID) for an HTML element.
/// This ID must be unique within the entire document, and is primarily used for:
/// - Fragment identifiers in URLs (linking to specific parts of a page)
/// - JavaScript targeting of specific elements
/// - CSS styling of specific elements
/// - Associating form controls with their labels
///
/// Elements with ID attributes are also available in JavaScript as global properties
/// on the `window` object.
///
/// ## Usage Notes
///
/// - Can be applied to any HTML element
/// - Must be unique within the entire document
/// - Should not contain ASCII whitespace characters
/// - Elements can only have one single ID value (unlike classes)
/// - For best compatibility, IDs should be valid CSS identifiers:
///   - Should start with a letter, underscore (_), or hyphen (-)
///   - Remaining characters can be letters, digits, underscores, or hyphens
///   - Case-sensitive
///
/// ## Examples
///
/// Basic usage:
/// ```html
/// <h1 id="main-title">Main Title</h1>
/// <p id="intro">Introduction paragraph</p>
/// ```
///
/// Used with fragment identifiers:
/// ```html
/// <a href="#section2">Jump to Section 2</a>
///
/// <h2 id="section2">Section 2</h2>
/// ```
///
/// Used with CSS:
/// ```css
/// #main-title {
///   color: blue;
/// }
/// ```
///
/// Used with JavaScript:
/// ```javascript
/// // These are all equivalent ways to get the element
/// const element = document.getElementById('intro');
/// const element = document.querySelector('#intro');
/// const element = window.intro;
/// ```
@dynamicMemberLookup
public struct Id: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "id" }

    /// The ID value
    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}
