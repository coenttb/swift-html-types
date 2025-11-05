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

/// Represents an HTML noframes element (`<noframes>`), which provides content for browsers
/// that don't support frames.
///
/// The `FrameFallback` struct provides a way to display alternative content in browsers
/// that don't support or have disabled support for frames.
///
/// ## Example
///
/// ```swift
/// noframes {
///     p {
///         "It seems your browser does not support frames or is configured to not allow them."
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - This element is deprecated and shouldn't be used in modern web development.
/// - When frames are needed, use the `<iframe>` element instead.
/// - If you must use this element, provide meaningful alternative content that offers
///   similar functionality to what would be available in the frames.
///
@available(
    *,
    deprecated,
    message: "The noframes element is obsolete and shouldn't be used in modern web development"
)
public struct FrameFallback: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "noframes" }

    /// Creates a new FrameFallback element with the specified content.
    public init(

        )
    {

    }
}
