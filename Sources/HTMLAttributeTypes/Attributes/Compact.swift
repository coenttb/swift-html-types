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

/// The `compact` attribute is a boolean attribute that, if present, indicates that the list should be rendered in a compact style.
///
/// ## Usage Notes
///
/// - This attribute is primarily used with `<dl>`, `<ol>`, and `<ul>` elements.
/// - The `compact` attribute is deprecated in HTML5 and should be avoided in favor of CSS.
///
/// ## Examples
///
/// ```html
/// <ul compact></ul>
/// ```
@available(*, deprecated)
@dynamicMemberLookup
public struct Compact: HTMLBooleanAttribute, CustomStringConvertible {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "compact" }

    public var rawValue: Bool

    public init(value: Bool = true) {
        self.rawValue = value
    }
}
