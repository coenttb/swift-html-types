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

/// Represents an HTML legend element (`<legend>`), which represents a caption for the content of its parent `<fieldset>`.
///
/// The `Legend` struct provides a type-safe way to create HTML legend elements.
///
/// ## Example
///
/// ```swift
/// fieldset {
///     legend {
///         "Choose your favorite monster"
///     }
///     // form controls
/// }
/// ```
///
/// ## Best Practices
///
/// - Always use a legend element as the first child of a fieldset element
/// - Use legend to provide a descriptive caption for grouped form controls
/// - Keep legend text concise and informative
/// - Consider accessibility by using clear, descriptive text
///
public struct Legend: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "legend" }

    /// Creates a new Legend element.
    public init(

        )
    {

    }
}
