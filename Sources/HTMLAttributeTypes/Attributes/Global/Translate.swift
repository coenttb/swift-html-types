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

/// Controls whether an element's content should be translated.
///
/// The `translate` global attribute is an enumerated attribute that specifies whether an element's
/// translatable attribute values and its text node children should be translated when the page is
/// localized, or whether they should remain unchanged.
///
/// This attribute is useful for content that should not be translated, such as brand names, proper
/// nouns, code samples, or certain technical terms. While not all browsers directly interpret this
/// attribute, it is respected by automatic translation systems like Google Translate and may be
/// respected by tools used by human translators.
///
/// ## Values
///
/// - **yes** (or empty string): The element's content should be translated when the page is localized
/// - **no**: The element's content must not be translated
///
/// ## Usage Notes
///
/// - The default value is "yes" if not specified
/// - The attribute's value is case-insensitive
/// - The attribute is inherited by child elements unless specified otherwise
/// - Use sparingly and only on content that truly should not be translated
/// - Common candidates for `translate="no"` include:
///   - Brand names and trademarks
///   - Proper nouns and personal names
///   - Technical terms that should remain consistent
///   - Code snippets and programming examples
///   - Abbreviations or acronyms with specific meanings
///
/// ## Examples
///
/// Protecting a brand name from translation:
/// ```html
/// <footer>
///   <p>© 2023 <span translate="no">SwiftHTML</span>. All rights reserved.</p>
/// </footer>
/// ```
///
/// Keeping code snippets unchanged:
/// ```html
/// <pre translate="no">
/// func greet(name: String) {
///     print("Hello, \(name)!")
/// }
/// </pre>
/// ```
///
/// Applying to a specific section:
/// ```html
/// <article>
///   <h1>Technical Specifications</h1>
///   <p>The following terms are standard across all products:</p>
///   <ul translate="no">
///     <li>RAM: Random Access Memory</li>
///     <li>CPU: Central Processing Unit</li>
///     <li>GPU: Graphics Processing Unit</li>
///   </ul>
/// </article>
/// ```
///
/// Mixed content with selective translation:
/// ```html
/// <p>
///   Please contact our support team at
///   <span translate="no">support@example.com</span>
///   for assistance.
/// </p>
/// ```
@dynamicMemberLookup
public struct Translate: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "translate" }

    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension Translate {
    /// Content should be translated
    @inlinable public static var yes: Self { "yes" }

    /// Content should not be translated
    @inlinable public static var no: Self { "no" }
}

extension Translate: ExpressibleByBooleanLiteral {
    public init(booleanLiteral value: BooleanLiteralType) {
        switch value {
        case true: self = .yes
        case false: self = .no
        }
    }
}

extension Translate: CaseIterable {
    public static let allCases: [Translate] = [.yes, .no]
}
