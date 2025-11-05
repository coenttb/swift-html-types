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

/// The `noresize` attribute prevents users from resizing a frame or iframe element.
///
/// This is a boolean attribute that indicates whether the user is allowed to resize the frame.
/// When present, it specifies that the frame cannot be resized.
///
/// ## Usage Notes
///
/// - This attribute is deprecated in HTML5 and should be avoided.
/// - Use CSS instead for controlling the appearance and behavior of frames.
///
/// ## Examples
///
/// ```html
/// <frame noresize></frame>
/// ```
@dynamicMemberLookup
public struct NoResize: HTMLBooleanAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "noresize" }

    /// The attribute value
    public var rawValue: Bool

    /// Creates a new NoResize attribute.
    public init(value: Bool = true) {
        self.rawValue = value
    }
}
