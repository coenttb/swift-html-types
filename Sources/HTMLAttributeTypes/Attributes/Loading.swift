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

/// Represents the CSS `loading` attribute that specifies how the browser should load an image.
///
/// The `loading` attribute affects when and how resources like images and iframes
/// are loaded relative to their visibility in the viewport. This can significantly
/// impact page performance and data usage.
///
/// ```
///    Loading behavior:
///
///    eager (default):            lazy:
///    +--------------+            +--------------+
///    | Image loads  |            | Placeholder  |
///    | immediately  |            | until near   |
///    | when page    |            | viewport     |
///    | is rendered  |            |              |
///    +--------------+            +--------------+
///                                      |
///                                      v
///                                +--------------+
///                                | Image loads  |
///                                | when user    |
///                                | scrolls near |
///                                | viewport     |
///                                +--------------+
/// ```
///
/// Example usage:
/// ```swift
/// let lazyLoading = Loading.lazy
/// // HTML attribute: loading="lazy"
///
/// let eagerLoading = Loading.eager
/// // HTML attribute: loading="eager"
/// ```
///
/// - Note: This is primarily used as an HTML attribute rather than a CSS property,
///   but it's included in this library for completeness when working with HTML elements.
///
/// - SeeAlso: [MDN Web Docs: loading attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#attr-loading)
@dynamicMemberLookup
public struct Loading: HTMLStringAttribute {
    @inlinable public static var attribute: String { "loading" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the marginheight attribute
    public init(value: String) {
        self.rawValue = value
    }
}

extension Loading {
    @inlinable public static var lazy: Self { "lazy" }
    @inlinable public static var eager: Self { "eager" }
}

extension Loading: CaseIterable {
    public static let allCases: [Loading] = [.lazy, .eager]
}
