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

/// Represents an HTML details element (`<details>`), which creates a disclosure widget in which
/// information is visible only when the widget is toggled into an open state.
///
/// The `Details` struct provides a type-safe way to create disclosure widgets with customizable content.
/// A summary or label should be provided using the `<summary>` element as the first child.
///
/// ## Example
///
/// ```swift
/// details {
///     summary {
///         "System Requirements"
///     }
///     p {
///         "Requires a computer running an operating system. The computer must have some memory and ideally some kind of long-term storage."
///     }
/// }
/// ```
///
/// ## Multiple Named Disclosure Boxes
///
/// ```swift
/// details(name: "reqs") {
///     summary {
///         "Graduation Requirements"
///     }
///     p {
///         "Requires 40 credits, including a passing grade in health, geography, history, economics, and wood shop."
///     }
/// }
/// details(name: "reqs") {
///     summary {
///         "System Requirements"
///     }
///     p {
///         "Requires a computer running an operating system."
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Use the `open` attribute to control the initial state of the disclosure widget
/// - Always include a `<summary>` element as the first child to provide a label
/// - The `name` attribute allows multiple details elements to be connected in an accordion-like pattern
/// - Use CSS to style the disclosure widget for better visual appearance
///
public struct Details: HTMLElement {
  /// The HTML tag name
  @inlinable public static var tag: String { "details" }

  /// Boolean attribute that indicates whether the details are currently visible.
  /// When present, the details are shown; when absent, the details are hidden.
  public var open: Open?

  /// Specifies a group name for multiple connected details elements.
  /// When multiple details elements have the same name value, only one can be open at a time.
  public var name: Name?

  /// Creates a new Details element with the specified attributes.
  ///
  /// - Parameters:
  ///   - open: When present, indicates that the details should be visible
  ///   - name: Group name for connected details elements (accordion behavior)
  public init(
    open: Open? = nil,
    name: Name? = nil
  ) {
    self.open = open
    self.name = name

  }
}
