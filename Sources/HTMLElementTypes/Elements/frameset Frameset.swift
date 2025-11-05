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

/// Represents an HTML frameset element (`<frameset>`), which is used to contain `<frame>` elements.
///
/// The `Frameset` struct provides a type-safe way to create HTML frameset elements with various attributes.
///
/// > Note: This element is deprecated. Modern websites should use `<iframe>` instead.
///
/// ## Example
///
/// ```swift
/// frameset(cols: "50%, 50%") {
///     frame(src: "https://example.com/page1")
///     frame(src: "https://example.com/page2")
/// }
/// ```
///
/// ## Best Practices
///
/// - Avoid using frameset in modern web development as it's deprecated
/// - Use `<iframe>` instead for embedding content
/// - A frameset document has a `<frameset>` element instead of a `<body>` element
///
public struct Frameset: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "frameset" }

    /// Specifies the number and size of horizontal spaces in a frameset
    public var cols: Cols?

    /// Specifies the number and size of vertical spaces in a frameset
    public var rows: Rows?

    /// Creates a new Frameset element with the specified attributes.
    ///
    /// - Parameters:
    ///   - cols: Specifies the number and size of horizontal spaces in a frameset
    ///   - rows: Specifies the number and size of vertical spaces in a frameset (typically `<frame>` elements)
    public init(
        cols: Cols? = nil,
        rows: Rows? = nil
    ) {
        self.cols = cols
        self.rows = rows

    }
}
