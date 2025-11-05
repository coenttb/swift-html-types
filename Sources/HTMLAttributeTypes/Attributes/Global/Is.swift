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

/// Specifies that a standard HTML element should behave like a defined custom built-in element.
///
/// The `is` global attribute allows you to extend standard HTML elements with custom functionality
/// defined in a custom element. This attribute is part of the Web Components standard and enables
/// the creation of customized built-in elements.
///
/// ## Browser Support Note
///
/// **Important**: Browser support for customized built-in elements varies significantly:
/// - Chrome/Edge/Opera support them
/// - Firefox supports them behind a flag
/// - Safari does not support them and has indicated it does not plan to
///
/// Due to this inconsistent support, consider using autonomous custom elements
/// (e.g., `<my-element>`) instead of customized built-in elements where possible.
///
/// ## Usage Notes
///
/// - Can only be used if the specified custom element has been properly defined using
///   `customElements.define()` with the `extends` option
/// - The custom element must extend the type of the standard element it's being applied to
/// - This attribute is only meaningful with JavaScript that properly defines the custom element
///
/// ## Examples
///
/// Basic usage:
/// ```html
/// <!-- Standard paragraph extended with custom word-count behavior -->
/// <p is="word-count">This is a paragraph with custom word counting behavior.</p>
/// ```
///
/// With corresponding JavaScript:
/// ```javascript
/// // Define a custom element that extends HTMLParagraphElement
/// class WordCount extends HTMLParagraphElement {
///   constructor() {
///     super();
///     // Count words and do something with the count
///     const wordCount = this.textContent.split(/\s+/).length;
///     // Custom logic here...
///   }
/// }
///
/// // Register the custom element
/// customElements.define("word-count", WordCount, { extends: "p" });
/// ```
///
/// Other examples:
/// ```html
/// <button is="fancy-button">Fancy Button</button>
/// <ul is="sortable-list">
///   <li>Item 1</li>
///   <li>Item 2</li>
/// </ul>
/// ```
@dynamicMemberLookup
public struct Is: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "is" }

    /// The name of the custom element
    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}
