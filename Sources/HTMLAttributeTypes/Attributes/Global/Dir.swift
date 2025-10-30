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

/// Specifies the text direction for the content in an element.
///
/// The `dir` global attribute specifies the text direction of the element's content. This is important
/// for proper rendering of text containing different language scripts, especially for languages
/// that are written right-to-left (RTL) like Arabic, Hebrew, and Persian.
///
/// ## Usage Notes
///
/// - Can be applied to any HTML element
/// - The default value if not specified is inherited from the parent element or document
/// - If there is no direction set in the document, the default is `ltr` (left-to-right)
/// - The attribute is often used in combination with the `lang` attribute
/// - In bidirectional text, the algorithm defined in the Unicode standard determines the display order
/// - Mandatory for the `<bdo>` element where it has a different semantic meaning
/// - Not inherited by the `<bdi>` element (defaults to `auto` if not set)
/// - Can be overridden by CSS properties `direction` and `unicode-bidi`
/// - When a table has `dir="rtl"`, the column order is arranged from right to left
///
/// ## Examples
///
/// Basic usage:
/// ```html
/// <!-- Set direction to right-to-left (e.g., for Arabic) -->
/// <p dir="rtl">هذه الفقرة باللغة العربية</p>
///
/// <!-- Set direction to left-to-right (e.g., for English) -->
/// <p dir="ltr">This is English text</p>
///
/// <!-- Let the browser determine direction automatically from content -->
/// <p dir="auto">This will adapt based on content direction</p>
/// ```
///
/// With mixed content:
/// ```html
/// <div dir="rtl">
///   <p>This is a right-to-left paragraph containing
///     <span dir="ltr">left-to-right text</span>
///   </p>
/// </div>
/// ```
@dynamicMemberLookup
public struct Dir: HTMLStringAttribute {
  /// The name of the HTML attribute
  @inlinable public static var attribute: String { "dir" }

  public let rawValue: String

  public init(value: String) {
    self.rawValue = value
  }
}

extension Dir {
  /// Left-to-right text direction (default)
  ///
  /// Used for languages that are written from left to right, such as English, French, and most
  /// European languages.
  ///
  /// Example:
  /// ```html
  /// <p dir="ltr">This is English text</p>
  /// ```
  @inlinable public static var ltr: Self { "ltr" }

  /// Right-to-left text direction
  ///
  /// Used for languages that are written from right to left, such as Arabic, Hebrew, and Persian.
  ///
  /// Example:
  /// ```html
  /// <p dir="rtl">هذه الفقرة باللغة العربية</p>
  /// ```
  @inlinable public static var rtl: Self { "rtl" }

  /// Let the user agent determine direction based on content
  ///
  /// The browser parses characters inside the element until it finds a character with strong
  /// directionality, then applies that directionality to the whole element. This is best used
  /// for content with unknown directionality, such as user input or external data.
  ///
  /// Example:
  /// ```html
  /// <p dir="auto">Content determines direction</p>
  /// ```
  @inlinable public static var auto: Self { "auto" }
}

extension Dir: CaseIterable {
  public static let allCases: [Dir] = [ltr, rtl, auto]
}
