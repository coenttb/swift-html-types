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

/// Represents an HTML keyboard input element (`<kbd>`), which denotes textual user input from a keyboard,
/// voice input, or any other text entry device.
///
/// The `KeyboardInput` struct provides a type-safe way to create keyboard input elements in HTML documents.
///
/// ## Example
///
/// Basic example:
/// ```swift
/// kbd {
///     "help my-command"
/// }
/// ```
///
/// Representing keyboard shortcuts:
/// ```swift
/// kbd {
///     kbd { "Ctrl" }
///     "+"
///     kbd { "N" }
/// }
/// ```
///
/// ## Usage Notes
///
/// - Nesting `<kbd>` elements: A `<kbd>` element within another `<kbd>` element represents an actual
///   key or unit of input as part of a larger input (like keyboard shortcuts).
/// - When used with `<samp>`: A `<kbd>` element inside a `<samp>` element represents input echoed back
///   by the system, while a `<samp>` element inside a `<kbd>` element represents system-generated text
///   that the user inputs (like menu names).
/// - By default, browsers typically render `<kbd>` content in a monospace font.
///
public struct KeyboardInput: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "kbd" }

    /// Creates a new keyboard input element.
    public init(

        )
    {

    }
}
