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

/// Represents an HTML fencedframe element (`<fencedframe>`), which embeds another HTML page within a privacy-preserving container.
///
/// The `FencedFrame` element is similar to an iframe but with enhanced privacy features:
/// - Communication is restricted between the fencedframe content and its embedding site
/// - A fencedframe can access cross-site data only in controlled circumstances that preserve user privacy
/// - It cannot be manipulated via regular scripting
/// - Content can only be embedded via specific APIs like Protected Audience or Shared Storage
/// - Neither the fencedframe nor embedding context can access each other's DOM
///
/// ## Example
///
/// ```swift
/// fencedframe(
///     width: 640,
///     height: 320
/// ) {
///     // Content determined by API-generated config
/// }
/// ```
///
/// ## Accessibility
///
/// Use the `title` global attribute to provide a description of the embedded content for assistive technologies.
/// Without this label, users of screen readers would need to navigate into the fencedframe to understand its content.
///
public struct FencedFrame: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "fencedframe" }

    /// Specifies a Permissions Policy for the fencedframe
    public var allow: HTMLAttributeTypes.Allow?

    /// Height of the fencedframe in CSS pixels (default is 150)
    public var height: HTMLAttributeTypes.Height?

    /// Width of the fencedframe in CSS pixels (default is 300)
    public var width: HTMLAttributeTypes.Width?

    /// Creates a new FencedFrame element with the specified attributes.
    ///
    /// - Parameters:
    ///   - allow: Permissions Policy for the fencedframe
    ///   - height: Height in CSS pixels
    ///   - width: Width in CSS pixels
    public init(
        allow: HTMLAttributeTypes.Allow? = nil,
        height: HTMLAttributeTypes.Height? = nil,
        width: HTMLAttributeTypes.Width? = nil
    ) {
        self.allow = allow
        self.height = height
        self.width = width

    }
}

extension FencedFrame {
    public typealias Allow = String
}
