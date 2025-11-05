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

/// Represents an HTML directory element (`<dir>`), which is deprecated.
///
/// The `Directory` element was historically used as a container for a directory of files and/or folders.
/// This element is deprecated and has been removed from HTML standards. Use `<ul>` instead.
///
/// ## Example
///
/// ```swift
/// dir {
///     li { "File 1" }
///     li { "File 2" }
/// }
/// ```
///
/// ## Best Practices
///
/// - Avoid using this element as it is deprecated
/// - Use `<ul>` for lists, including lists of files
/// - If needed for legacy compatibility, ensure proper accessibility
///
public struct Directory: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "dir" }

    /// Boolean attribute that hints the list should be rendered in a compact style
    public var compact: HTMLAttributeTypes.Compact?

    /// Creates a new Directory element with the specified attributes.
    ///
    /// - Parameters:
    ///   - compact: Boolean attribute that hints the list should be rendered in a compact style
    public init(
        compact: HTMLAttributeTypes.Compact? = nil
    ) {
        self.compact = compact

    }
}
