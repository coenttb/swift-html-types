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

/// Represents an HTML `<ins>` element, which marks text that has been added to a document.
///
/// The `InsertedText` struct provides a type-safe way to create HTML inserted text elements with various attributes.
///
/// ## Example
///
/// ```swift
/// ins {
///     "This text has been inserted"
/// }
/// ```
///
/// ```swift
/// ins(cite: "changes.html", datetime: "2025-04-05T12:00:00Z") {
///     "This text was added on April 5th, 2025"
/// }
/// ```
///
/// ## Accessibility Considerations
///
/// - The presence of the `<ins>` element is not announced by most screen reading technology in its default configuration.
/// - It can be made to be announced by using the CSS `content` property, along with the `::before` and `::after` pseudo-elements.
/// - Only use this when it's important for users to know that content was inserted.
///
public struct InsertedText: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "ins" }

    /// The URI of a resource that explains the change, such as a link to meeting minutes or a ticket.
    public var cite: HTMLAttributeTypes.Cite?

    /// Indicates the time and date of the change.
    public var datetime: HTMLAttributeTypes.DateTime?

    /// Creates a new InsertedText element with the specified attributes.
    ///
    /// - Parameters:
    ///   - cite: The URI of a resource that explains the change.
    ///   - datetime: The time and date of the change..
    public init(
        cite: HTMLAttributeTypes.Cite? = nil,
        datetime: HTMLAttributeTypes.DateTime? = nil
    ) {
        self.cite = cite
        self.datetime = datetime

    }
}
