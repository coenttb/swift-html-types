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

/// Represents an HTML `<menu>` element, which is a semantic alternative to `<ul>` for representing a list of commands/tools.
///
/// The `Menu` struct provides a type-safe way to create HTML menu elements that represent toolbars or interactive lists
/// of commands that the user can perform or activate.
///
/// ## Example
///
/// ```swift
/// menu {
///     li {
///         button { "Copy" }
///     }
///     li {
///         button { "Cut" }
///     }
///     li {
///         button { "Paste" }
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Use `<menu>` when displaying a toolbar containing commands
/// - While semantically different, browsers currently treat `<menu>` the same as `<ul>`
/// - Include `<li>` elements as direct children of `<menu>`
/// - For styling, you may want to apply `list-style-type: none` and adjust the display property
///
public struct Menu: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "menu" }

    /// Creates a new Menu element with the specified content.
    public init(

        )
    {

    }
}
