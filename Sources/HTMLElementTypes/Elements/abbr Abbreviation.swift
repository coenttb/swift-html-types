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

/// Represents an HTML abbreviation element (`<abbr>`), which marks up an abbreviation or acronym.
///
/// The `Abbreviation` struct provides a type-safe way to create HTML abbreviation elements.
/// The `title` global attribute has special semantic meaning with this element and should
/// contain the full expansion of the abbreviation when used.
///
/// ## Example
///
/// ```swift
/// abbr {
///     "HTML"
/// }
/// ```
///
/// With global title attribute (handled separately):
/// ```swift
/// abbr(title: "HyperText Markup Language") {
///     "HTML"
/// }
/// ```
///
/// ## Use Cases
///
/// - When an abbreviation is used and you want to provide an expansion outside the document's content flow
/// - To define an abbreviation which may be unfamiliar to the reader
/// - When an abbreviation's presence needs to be semantically noted for styling or scripting
/// - In combination with `<dfn>` to establish definitions for abbreviated terms
///
/// ## Best Practices
///
/// - Provide a full expansion of the term in plain text on first use
/// - Use the title attribute to provide the full expansion
/// - Ensure the title attribute contains only the full description and nothing else
/// - For accessibility, consider spelling out the abbreviation in full the first time it's used
/// - In languages with grammatical number, use the same grammatical number in your title attribute as inside the abbr element
///
/// ## Accessibility Considerations
///
/// - Spelling out the acronym or abbreviation in full the first time it is used on a page is beneficial for helping people understand it
/// - Only include a title if expanding the abbreviation in the text is not possible
/// - This is especially helpful for people unfamiliar with terminology, new to the language, or with cognitive concerns
///
/// - Note: When rendered, this generates an HTML `<abbr>` element with the appropriate
///   attributes based on the configuration.
public struct Abbreviation: HTMLElement {
  @inlinable public static var tag: String { "abbr" }

  /// Creates a new Abbreviation element with the specified content.
  public init() {}
}
