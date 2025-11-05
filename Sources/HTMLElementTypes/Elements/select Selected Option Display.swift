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

/// Represents an HTML `<select>` element, which creates a dropdown list of options.
///
/// The `Select` element provides a way to create a form control that allows users to choose
/// one or multiple options from a dropdown list.
///
/// ## Example
///
/// ```swift
/// select {
///     option("value1") {
///         "Option 1"
///     }
///     option("value2") {
///         "Option 2"
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Always provide a descriptive label using the `<label>` element
/// - Use the `multiple` attribute when allowing multiple selections
/// - Include a default selected option when appropriate
/// - Keep the dropdown list reasonably sized for usability
/// - Consider using `<optgroup>` to organize long lists of options
///
public struct Select: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "select" }

    /// Specifies that multiple options can be selected
    public var multiple: HTMLAttributeTypes.Multiple?

    /// Specifies the name of the control
    public var name: HTMLAttributeTypes.Name?

    /// Specifies that the control is required
    public var required: HTMLAttributeTypes.Required?

    /// Specifies the number of visible options
    public var size: HTMLAttributeTypes.Size?

    /// Specifies that the select should be disabled
    public var disabled: HTMLAttributeTypes.Disabled?

    /// Specifies a form to which the select belongs
    public var form: HTMLAttributeTypes.Form.ID?

    /// Automatically focuses the select when the page loads
    public var autofocus: HTMLAttributeTypes.Autofocus?

    /// Creates a new Select element with the specified attributes.
    ///
    /// - Parameters:
    ///   - multiple: Whether multiple options can be selected
    ///   - name: The name of the control
    ///   - required: Whether the control is required
    ///   - size: The number of visible options
    ///   - disabled: Whether the select should be disabled
    ///   - form: A form to which the select belongs
    ///   - autofocus: Whether the select should be focused when the page loads (typically option elements)
    public init(
        multiple: HTMLAttributeTypes.Multiple? = nil,
        name: HTMLAttributeTypes.Name? = nil,
        required: HTMLAttributeTypes.Required? = nil,
        size: HTMLAttributeTypes.Size? = nil,
        disabled: HTMLAttributeTypes.Disabled? = nil,
        form: HTMLAttributeTypes.Form.ID? = nil,
        autofocus: HTMLAttributeTypes.Autofocus? = nil
    ) {
        self.multiple = multiple
        self.name = name
        self.required = required
        self.size = size
        self.disabled = disabled
        self.form = form
        self.autofocus = autofocus
    }
}
