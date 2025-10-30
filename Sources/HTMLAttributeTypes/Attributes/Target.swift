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

/// An attribute that specifies where to display the response after form submission.
///
/// The `target` attribute defines a name or keyword for the browsing context (tab, window, or iframe)
/// where the form response should be displayed. This works similarly to the target attribute on links.
///
/// ## Reserved Target Values
///
/// The following keywords have special meanings:
///
/// - `_self` (default): Load into the same browsing context as the current one
/// - `_blank`: Load into a new unnamed browsing context (new tab or window)
/// - `_parent`: Load into the parent browsing context of the current one
/// - `_top`: Load into the top-level browsing context
/// - `_unfencedTop`: Load into the top-level context from a fenced frame
///
/// ## Target Behavior
///
/// ### _self
/// - Default behavior
/// - Replaces the current page with the form response
/// - Suitable for most forms
///
/// ### _blank
/// - Opens the response in a new tab or window
/// - Preserves the current page
/// - In modern browsers, behaves like using `rel="noopener"` (doesn't set window.opener)
/// - Useful for forms that shouldn't navigate away from the current page
///
/// ### _parent
/// - Loads the response in the parent frame
/// - If there's no parent frame, behaves like `_self`
/// - Useful in nested frame structures
///
/// ### _top
/// - Loads the response in the highest-level frame (the entire window)
/// - Useful for breaking out of nested frames
/// - If there's no parent frame, behaves like `_self`
///
/// ### _unfencedTop
/// - Specialized for fenced frames
/// - Only available inside fenced frames
/// - Loads the response into the top-level frame, traversing beyond the fenced frame's boundaries
///
/// ## Custom Target Names
///
/// You can also specify a custom name to:
///
/// - Target a specific `<iframe>` by matching its `name` attribute
/// - Create a consistent named browsing context for multiple forms
///
/// ## Usage Notes
///
/// - Can be overridden by `formtarget` attributes on submit buttons
/// - Consider user experience when deciding where to display form responses
/// - For security, be cautious when using `_blank` with untrusted content
///
/// ## Examples
///
/// ```swift
/// // Form that replaces the current page (default)
/// HTML.form.action("/submit").method(.post)
///
/// // Form that opens response in a new tab
/// HTML.form.action("/search").method(.get).target(.blank)
///
/// // Form that targets a specific iframe
/// HTML.form.action("/update").method(.post).target("results-frame")
///
/// // Form with different targets for different buttons
/// HTML.form.action("/process") {
///     // Form fields...
///     input().type(.submit).value("Update in Same Window")
///     input().type(.submit).value("Open in New Tab").formtarget("_blank")
/// }
/// ```
@dynamicMemberLookup
public struct Target: HTMLStringAttribute {
  /// The name of the HTML attribute
  @inlinable public static var attribute: String { "target" }

  /// The target value
  public var rawValue: String

  /// Initialize with a string value
  public init(value: String) {
    self.rawValue = value
  }

  /// Initialize with a target value
  public init(_ value: String) {
    self.init(value: value)
  }
}

extension Target: ExpressibleByStringLiteral {
  public init(stringLiteral value: StringLiteralType) {
    self.init(value)
  }
}

extension Target {
  /// Opens the response in the current browsing context (default)
  @inlinable public static var `self`: Self { "_self" }

  /// Opens the response in a new browsing context (usually a new tab)
  @inlinable public static var blank: Self { "_blank" }

  /// Opens the response in the parent browsing context; if no parent exists, behaves as `self`
  @inlinable public static var parent: Self { "_parent" }

  /// Opens the response in the topmost browsing context; if no ancestors exist, behaves as `self`
  @inlinable public static var top: Self { "_top" }

  /// Allows embedded fenced frames to navigate the top-level frame
  @inlinable public static var unfencedTop: Self { "_unfencedTop" }
}
