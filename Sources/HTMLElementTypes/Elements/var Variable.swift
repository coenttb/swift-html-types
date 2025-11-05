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

/// Represents an HTML variable element (`<var>`), which represents the name of a variable in a mathematical
/// expression or a programming context.
///
/// The `Variable` struct provides a type-safe way to create HTML variable elements for marking up variable names
/// or placeholders in text.
///
/// ## Example
///
/// ```swift
/// p {
///     "The volume of a box is "
///     var { "l" }
///     " × "
///     var { "w" }
///     " × "
///     var { "h" }
///     ", where "
///     var { "l" }
///     " represents the length, "
///     var { "w" }
///     " the width and "
///     var { "h" }
///     " the height of the box."
/// }
/// ```
///
/// Example with programming variables:
///
/// ```swift
/// p {
///     "The variables "
///     var { "minSpeed" }
///     " and "
///     var { "maxSpeed" }
///     " control the minimum and maximum speed of the apparatus in revolutions per minute (RPM)."
/// }
/// ```
///
/// ## Best Practices
///
/// - Use `<var>` for variable names in mathematical expressions
/// - Use `<var>` for variable or parameter names in programming contexts
/// - Use `<var>` to denote placeholders in text that should be replaced with a specific value
/// - Do not use `<var>` for styling purposes - use CSS with appropriate semantic elements instead
///
/// ## Related Elements
///
/// - `<code>`: Use for code fragments or statements
/// - `<kbd>`: Use for user input or keyboard keys
/// - `<samp>`: Use for sample output from programs
///
/// ## Default Styling
///
/// Most browsers render the `<var>` element in an italicized font style, although this can vary
/// across browsers and can be overridden with CSS.
///
public struct Variable: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "var" }

    /// Creates a new Variable element.
    public init(

        )
    {

    }
}
