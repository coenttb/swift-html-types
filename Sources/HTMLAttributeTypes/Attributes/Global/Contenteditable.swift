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

/// A global attribute that indicates whether the element's content is editable by the user.
///
/// The `contenteditable` attribute is an enumerated attribute that specifies if the element can
/// be edited directly by the user. When enabled, the browser provides a way for users to edit
/// the content within the element.
///
/// ## Usage Notes
///
/// - Can be applied to any HTML element
/// - When enabled, the element becomes interactive and can receive focus
/// - Nested editable elements don't automatically participate in tab navigation (use `tabindex="0"` to enable)
/// - If not specified or value is invalid, the value is inherited from the parent element
/// - You can customize the text insertion caret color with the CSS `caret-color` property
///
/// ## Examples
///
/// Basic usage:
/// ```html
/// <div contenteditable="true">This content can be edited by users.</div>
/// ```
///
/// Using plaintext-only mode (no rich formatting):
/// ```html
/// <div contenteditable="plaintext-only">Edit this text (formatting will be stripped).</div>
/// ```
///
/// With no value (equivalent to "true"):
/// ```html
/// <blockquote contenteditable>Edit this quote.</blockquote>
/// ```
///
/// Explicitly disabling editability:
/// ```html
/// <div contenteditable="false">This content cannot be edited directly.</div>
/// ```
@dynamicMemberLookup
public struct Contenteditable: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "contenteditable" }

    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension Contenteditable {

    /// Element is editable (with rich formatting preserved when pasting)
    ///
    /// Example:
    /// ```html
    /// <div contenteditable="true">Editable content</div>
    /// ```
    @inlinable public static var `true`: Self { "true" }

    /// Element is editable - equivalent to true (with rich formatting preserved when pasting)
    ///
    /// Example:
    /// ```html
    /// <div contenteditable>Editable content</div>
    /// ```
    @inlinable public static var empty: Self { "" }

    /// Element is not editable
    ///
    /// Example:
    /// ```html
    /// <div contenteditable="false">Non-editable content</div>
    /// ```
    @inlinable public static var `false`: Self { "false" }

    /// Element is editable but only as plain text (formatting is removed when pasting)
    ///
    /// Example:
    /// ```html
    /// <div contenteditable="plaintext-only">Plain text editing only</div>
    /// ```
    @inlinable public static var plaintextOnly: Self { "plaintext-only" }
}

extension Contenteditable: CaseIterable {
    public static let allCases: [Contenteditable] = [
        .true,
        .empty,
        .false,
        .plaintextOnly,
    ]
}

extension Contenteditable: ExpressibleByBooleanLiteral {
    public init(booleanLiteral value: BooleanLiteralType) {
        switch value {
        case true: self = .true
        case false: self = .false
        }
    }
}
