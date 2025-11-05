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

/// Represents an HTML `<del>` element, which marks text that has been deleted from a document.
///
/// The `Del` struct provides a type-safe way to create HTML elements that represent deleted text,
/// which can be used when rendering "track changes" or source code diff information.
///
/// ## Example
///
/// ```swift
/// del {
///     "This text has been deleted"
/// }
///
/// del(cite: "https://example.com/meeting-notes.html",
///     datetime: "2025-04-05T14:30:00") {
///     "Feature removed based on meeting decision"
/// }
/// ```
///
/// ## Best Practices
///
/// - Use the `<del>` element to indicate text that has been removed from the document
/// - Pair with the `<ins>` element to show both deleted and inserted text for "track changes" style markup
/// - Consider accessibility implications - screen readers may not announce deleted text by default
///
/// ## Accessibility
///
/// The presence of the `del` element is not announced by most screen reading technology in its default configuration.
/// For critical content, consider using CSS with `::before` and `::after` pseudo-elements to make deletions more apparent.
///
public struct Del: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "del" }

    /// A URI for a resource that explains the change (for example, meeting minutes).
    public var cite: HTMLAttributeTypes.Cite?

    /// The time and date of the change as a valid date string with an optional time.
    public var datetime: HTMLAttributeTypes.DateTime?

    /// Creates a new Del element to mark deleted text.
    ///
    /// - Parameters:
    ///   - cite: A URI for a resource that explains the change
    ///   - datetime: The time and date of the change
    public init(
        cite: HTMLAttributeTypes.Cite? = nil,
        datetime: HTMLAttributeTypes.DateTime? = nil
    ) {
        self.cite = cite
        self.datetime = datetime
    }
}
