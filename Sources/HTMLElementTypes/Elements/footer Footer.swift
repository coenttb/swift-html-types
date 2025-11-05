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

/// Represents an HTML footer element (`<footer>`), which represents a footer for its nearest
/// ancestor sectioning content or sectioning root element.
///
/// A `<footer>` typically contains information about the author of the section, copyright data,
/// or links to related documents.
///
/// ## Example
///
/// ```swift
/// footer {
///     p {
///         "© 2023 Example Company. All Rights Reserved."
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Enclose information about the author in an `<address>` element within the footer
/// - When the nearest ancestor sectioning element is the body, the footer applies to the whole page
/// - A footer element must not be a descendant of an `<address>`, `<header>`, or another `<footer>` element
///
/// ## Accessibility
///
/// - The footer element has an implicit ARIA role of `contentinfo` (when at the page level)
///   or `generic` (when nested within article, aside, main, nav, or section)
/// - For legacy browser support, consider adding `role="contentinfo"` explicitly
public struct Footer: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "footer" }

    /// Creates a new Footer element.
    public init(

        )
    {

    }
}
