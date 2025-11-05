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

/// Represents an HTML datalist element (`<datalist>`), which contains a set of predefined options
/// for use with form inputs.
///
/// The `DataList` struct provides a type-safe way to create HTML datalist elements. The `<datalist>`
/// element is used to provide an autocomplete feature for form inputs by suggesting predefined options
/// that the user can select from while still allowing free-form input.
///
/// ## Example
///
/// ```swift
/// // Input with associated datalist
/// input(
///     type: .text,
///     id: "ice-cream-choice",
///     name: "ice-cream-choice",
///     list: "ice-cream-flavors"
/// )
///
/// // Datalist with options
/// datalist(id: "ice-cream-flavors") {
///     option(value: "Chocolate")
///     option(value: "Coconut")
///     option(value: "Mint")
///     option(value: "Strawberry")
///     option(value: "Vanilla")
/// }
/// ```
///
/// ## Usage Notes
///
/// - The `<datalist>` element must be associated with an input element using the `list` attribute
/// - The `<datalist>` element requires an `id` attribute to establish this association
/// - Contains `<option>` elements that represent the suggested values
/// - Unlike `<select>`, allows users to enter values not in the predefined list
/// - Works with many input types: text, search, url, tel, email, number, range, color, date, etc.
///
/// ## Best Practices
///
/// - Always provide an `id` attribute to enable association with input elements
/// - Include meaningful, frequently-used values as options
/// - For better accessibility, ensure inputs have associated labels
/// - Consider browser compatibility, as the appearance and behavior may vary
///
/// ## Accessibility Considerations
///
/// - The font size of datalist options may not scale with browser zoom settings
/// - Limited styling options for the suggestion dropdown
/// - Some screen reader/browser combinations may not announce the dropdown contents
///
/// - Note: When rendered, this generates an HTML `<datalist>` element containing option elements.
public struct DataList: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "datalist" }

    /// Creates a new DataList element with the specified attributes and content.
    ///
    /// - Parameters:
    ///   - id: The ID attribute, used to associate the datalist with an input element
    public init() {
    }
}
