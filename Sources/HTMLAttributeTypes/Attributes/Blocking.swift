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

/// Explicitly indicates that certain operations should be blocked on the fetching of critical subresources.
///
/// @import-ed stylesheets are generally considered as critical subresources, whereas background-image and fonts are not.
/// The operations that are to be blocked must be a space-separated list of blocking tokens.
///
/// ## Usage Notes
///
/// - `render`: The rendering of content on the screen is blocked.
///
/// ## Examples
///
/// ```html
/// <style blocking="render">
///   @import url("slow-loading-stylesheet.css");
/// </style>
/// ```
@dynamicMemberLookup
public struct Blocking: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "blocking" }

    /// The attribute value
    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension Blocking {
    @inlinable public static var render: Self { "render" }
}
