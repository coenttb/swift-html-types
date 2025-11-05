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

/// Represents an HTML address element (`<address>`), which indicates that the enclosed HTML
/// provides contact information for a person, people, or organization.
///
/// The `Address` struct provides a type-safe way to create HTML address elements that contain
/// contact information related to the document or a specific article within the document.
///
/// The contact information can include any appropriate form such as physical address,
/// URL, email address, phone number, social media handle, or geographic coordinates.
///
/// ## Example
///
/// ```swift
/// address {
///   "Contact the author: "
///   anchor(href: "mailto:author@example.com") {
///     "author@example.com"
///   }
///   lineBreak()
///   "123 Main Street, Anytown USA"
/// }
/// ```
///
/// ## Usage Notes
///
/// The `<address>` element can only be used to represent the contact information for its nearest
/// `<article>` or `<body>` element ancestor. Typically, it is placed inside the `<footer>`
/// element of the current section.
///
/// ## Best Practices
///
/// - Use only for contact information, not for other content
/// - Include the name of the person or organization along with contact details
/// - Place inside the `footer` element of the current section when appropriate
/// - Don't nest address elements
/// - Don't include headings, sections, or header/footer elements inside
/// - Use instead of generic elements like `<i>` or `<em>` for contact information to convey proper semantics
///
/// - Note: When rendered, this generates an HTML `<address>` element with the appropriate
///   attributes based on the configuration.
public struct Address: HTMLElement {
    @inlinable public static var tag: String { "address" }

    /// Creates a new Address element with the specified content.
    public init() {}
}
