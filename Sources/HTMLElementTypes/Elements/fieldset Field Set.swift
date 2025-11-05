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

/// Represents an HTML fieldset element (`<fieldset>`), which is used to group several controls as well as labels within a web form.
///
/// The `FieldSet` struct provides a type-safe way to create HTML fieldset elements with various attributes.
///
/// ## Example
///
/// ```swift
/// fieldset {
///     legend {
///         "Choose your favorite monster"
///     }
///     input(.radio, id: "kraken", name: "monster", value: "K")
///     label(for: "kraken") {
///         "Kraken"
///     }
///     br()
///     input(.radio, id: "sasquatch", name: "monster", value: "S")
///     label(for: "sasquatch") {
///         "Sasquatch"
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Use `<fieldset>` to group related form controls, especially radio buttons
/// - Always include a `<legend>` as the first child element to provide a caption for the fieldset
/// - Consider using the `disabled` attribute to disable all form controls within the fieldset at once
/// - Form controls inside the `<legend>` element won't be disabled when the fieldset is disabled
///
public struct FieldSet: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "fieldset" }

    /// Disables all form controls that are descendants of the fieldset
    public var disabled: HTMLAttributeTypes.Disabled?

    /// Associates the fieldset with a form element using the form's ID
    public var form: HTMLAttributeTypes.Form.ID?

    /// The name associated with the fieldset group
    public var name: HTMLAttributeTypes.Name?

    /// Creates a new FieldSet element with the specified attributes.
    ///
    /// - Parameters:
    ///   - disabled: If set, all form controls that are descendants of the fieldset will be disabled
    ///   - form: Associates the fieldset with a form element using the form's ID
    ///   - name: The name associated with the fieldset group
    public init(
        disabled: HTMLAttributeTypes.Disabled? = nil,
        form: HTMLAttributeTypes.Form.ID? = nil,
        name: HTMLAttributeTypes.Name? = nil
    ) {
        self.disabled = disabled
        self.form = form
        self.name = name
    }
}
