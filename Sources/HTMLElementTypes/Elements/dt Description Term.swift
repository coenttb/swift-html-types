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

/// Represents an HTML description term element (`<dt>`), which specifies a term in a description or definition list.
///
/// The `DescriptionTerm` element must be used inside a `<dl>` element. It is usually followed by a `<dd>` element;
/// however, multiple `<dt>` elements in a row indicate several terms that are all defined by the immediate next
/// `<dd>` element.
///
/// ## Example
///
/// ```swift
/// dl {
///     dt {
///         "Denim (semigloss finish)"
///     }
///     dd {
///         "Ceiling"
///     }
///     dt {
///         "Denim (eggshell finish)"
///     }
///     dt {
///         "Evening Sky (eggshell finish)"
///     }
///     dd {
///         "Layered on the walls"
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Always use `<dt>` as a child of a `<dl>` element or a `<div>` that is a child of a `<dl>`.
/// - The `<dt>` element should be followed by a `<dd>` element or another `<dt>` element.
/// - Multiple `<dt>` elements in a row indicate multiple terms defined by the next `<dd>` element.
///
public struct DescriptionTerm: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "dt" }

    /// Creates a new DescriptionTerm element.
    public init(

        )
    {

    }
}
