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

/// Represents an HTML `<code>` element, which displays its contents styled as a fragment of computer code.
///
/// The `Code` element is used to display short fragments of computer code or programming language syntax.
/// By default, browsers display the content of a `<code>` element using a monospace font.
///
/// ## Example
///
/// ```swift
/// p {
///     "The "
///     code {
///         "push()"
///     }
///     " method adds one or more elements to the end of an array."
/// }
/// ```
///
/// ## Best Practices
///
/// - Use `<code>` for short code fragments like variable names, function names, or single statements.
/// - For multi-line code blocks, wrap the `<code>` element within a `<pre>` element.
/// - Consider combining with other semantic text elements like `<var>` for variables or `<kbd>` for keyboard input.
/// - The element can be styled with CSS to enhance readability (background color, padding, etc.).
///
public struct Code: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "code" }

    /// Creates a new Code element.
    public init(

        )
    {

    }
}
