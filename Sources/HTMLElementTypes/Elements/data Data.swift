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

/// Represents an HTML data element (`<data>`), which links a given piece of content
/// with a machine-readable translation.
///
/// The `Data` element is used to associate a machine-readable value with human-readable content.
/// This can be useful when you want to include machine-readable information that's also
/// displayed to users, such as product IDs or other metadata.
///
/// ## Example
///
/// ```swift
/// data(value: "398") {
///     "Mini Ketchup"
/// }
/// ```
///
/// ## Best Practices
///
/// - If the content is time- or date-related, use the `<time>` element instead.
/// - Use the `value` attribute to provide the machine-readable translation of the content.
/// - This element can be used to associate additional data with content that is displayed to users.
///
public struct Data: HTMLElement {
  /// The HTML tag name
  @inlinable public static var tag: String { "data" }

  /// The machine-readable translation of the content
  public var value: Value<String>

  /// Creates a new Data element with the specified value.
  ///
  /// - Parameters:
  ///   - value: The machine-readable translation of the content
  public init(
    value: Value<String>
  ) {
    self.value = value

  }
}
