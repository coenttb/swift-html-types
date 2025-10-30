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

/// Represents an HTML bidirectional isolate element (`<bdi>`), which isolates a span of text that might
/// be formatted in a different direction from other text outside it.
///
/// The `BidirectionalIsolate` struct provides a type-safe way to create HTML bidirectional isolate elements.
/// This element is particularly useful when embedding user-generated content with unknown directionality.
///
/// ## Example
///
/// ```swift
/// bdi {
///     "User-generated content with possibly different directionality"
/// }
/// ```
///
/// ## Use Cases
///
/// - Displaying user names or other user-generated content that might contain text
///   in languages with right-to-left (RTL) script like Arabic or Hebrew
/// - Preventing the directionality of unknown text from affecting surrounding text
/// - Protecting website layout when displaying dynamic content from external sources
/// - Rendering lists where some items may contain text with different directionality
///
/// ## Behavior
///
/// The `<bdi>` element works in two ways:
/// - Text inside a `<bdi>` element does not influence the directionality of surrounding text
/// - The directionality of text inside `<bdi>` is not influenced by surrounding text
///
/// ## Accessibility Considerations
///
/// The `<bdi>` element improves accessibility by ensuring that bidirectional text renders correctly,
/// particularly important for users who read right-to-left languages. The element has an implicit
/// ARIA role of "generic".
///
/// ## Notes
///
/// - While similar visual effects can be achieved using CSS (`unicode-bidi: isolate`),
///   using the semantic `<bdi>` element is preferred.
/// - The `dir` attribute on `<bdi>` defaults to `auto`, never inheriting from parent elements.
/// - An alternative approach is using `<span dir="auto">`, but `<bdi>` has clearer semantics.
///
/// - Note: When rendered, this generates an HTML `<bdi>` element that isolates its content from
///   the bidirectional algorithm's influence.
public struct BidirectionalIsolate: HTMLElement {
  /// The HTML tag name
  @inlinable public static var tag: String { "bdi" }

  /// Creates a new BidirectionalIsolate element with the specified content.
  public init() {}
}
