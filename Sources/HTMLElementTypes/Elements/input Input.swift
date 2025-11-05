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

/// Represents an HTML input element, which is used to create interactive controls
/// for web-based forms to accept data from the user.
///
/// The `Input` struct provides a type-safe way to create various types of HTML input elements,
/// such as text fields, checkboxes, radio buttons, and more. Each input type has specific
/// attributes and behaviors defined by its variant.
///
/// Example usage:
/// ```swift
/// Input(
///     name: "username",
///     disabled: nil,
///     form: nil,
///     type: .text(Input.Text(value: "John"))
/// )
/// ```
///
/// - SeeAlso: `Input.Variant` for the available input types
///
/// - Note: When rendered, this generates an HTML `<input>` element with the appropriate
///   attributes based on the input type.
public struct Input: HTMLElement {
    @inlinable public static var tag: String { "input" }

    /// Name of the form control. Submitted with the form as part of a name/value pair.
    public var name: Name?

    /// Whether the form control is disabled.
    /// When set, the input element is disabled and cannot be interacted with or submitted.
    public var disabled: Disabled?

    /// Associates the control with a form element.
    /// When specified, this overrides the form's `id` attribute if the input is outside the form.
    public var form: HTMLAttributeTypes.Form.ID?

    /// Type of form control.
    /// Determines the appearance and behavior of the input element.
    /// See `Input.Variant` for all available input types.
    public var type: Input.Variant

    /// Creates a new Input element with the specified attributes.
    ///
    /// - Parameters:
    ///   - name: The name attribute for the input element
    ///   - disabled: Whether the input is disabled (optional)
    ///   - form: The ID of the form this input belongs to (optional)
    ///   - type: The type of input element to create
    public init(
        name: Name? = nil,
        disabled: Disabled? = nil,
        form: HTMLAttributeTypes.Form.ID? = nil,
        type: Input.Variant
    ) {
        self.name = name
        self.disabled = disabled
        self.form = form
        self.type = type
    }
}
