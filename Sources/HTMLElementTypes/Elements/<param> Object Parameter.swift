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

/// Represents an HTML `<param>` element, which defines parameters for an `<object>` element.
///
/// The `Param` struct provides a type-safe way to create HTML parameter elements.
/// This is a void element that must not have any content.
///
/// > Note: This element is deprecated. Though some browsers might still support it, it may have already
/// > been removed from the relevant web standards or may only be kept for compatibility purposes.
///
/// ## Example
///
/// ```swift
/// object {
///     param(name: "movie", value: "movie.swf")
///     param(name: "quality", value: "high")
/// }
/// ```
///
/// ## Best Practices
///
/// - Modern web applications should prefer other technologies instead of the `<object>` and `<param>` elements
/// - For embedding media, consider using `<video>`, `<audio>`, or `<picture>` elements instead
/// - For embedding other content, consider using `<iframe>` or more modern web components
///
public struct Param: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "param" }

    /// Name of the parameter
    public var name: HTMLAttributeTypes.Name?

    /// Value of the parameter
    public var value: HTMLAttributeTypes.Value<String>?

    /// Creates a new Param element with the specified attributes.
    ///
    /// - Parameters:
    ///   - name: Name of the parameter
    ///   - value: Value of the parameter
    public init(
        name: HTMLAttributeTypes.Name? = nil,
        value: HTMLAttributeTypes.Value<String>? = nil
    ) {
        self.name = name
        self.value = value
    }
}
