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

/// Represents an HTML article element (`<article>`), which defines a self-contained composition
/// that is intended to be independently distributable or reusable.
///
/// The `Article` struct provides a type-safe way to create HTML article elements that represent
/// independent pieces of content, such as blog posts, news articles, forum posts, or comments.
///
/// ## Example
///
/// ```swift
/// article {
///   heading1 { "Weather forecast for Seattle" }
///   article {
///     heading2 { "03 March 2018" }
///     paragraph { "Rain." }
///   }
///   article {
///     heading2 { "04 March 2018" }
///     paragraph { "Periods of rain." }
///   }
/// }
/// ```
///
/// ## Best Practices
///
/// - Each article should be identified with a heading element (`<h1>-<h6>`)
/// - Nested articles represent content related to the parent article (e.g., comments)
/// - Author information can be provided using the `<address>` element
/// - Publication dates should use the `<time>` element with a datetime attribute
/// - Use `<section>` elements for logical divisions within an article
/// - Don't place article elements inside `<address>` elements
///
/// - Note: When rendered, this generates an HTML `<article>` element with the appropriate
///   attributes based on the configuration.
public struct Article: HTMLElement {
    @inlinable public static var tag: String { "article" }

    /// Creates a new Article element with the specified content.
    public init() {}
}
