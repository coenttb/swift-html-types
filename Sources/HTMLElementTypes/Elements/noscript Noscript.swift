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

/// Represents an HTML `<noscript>` element, which defines content to be inserted if a script type on the page
/// is unsupported or if scripting is currently turned off in the browser.
///
/// The `Noscript` element can be used to provide alternative content when JavaScript is unavailable.
///
/// ## Example
///
/// ```swift
/// noscript {
///     a(href: "https://www.mozilla.org/") {
///         "External Link"
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Use `<noscript>` to provide meaningful alternative content for users who have JavaScript disabled
/// - When inside the `<head>` element, `<noscript>` can only contain `<link>`, `<style>`, and `<meta>` elements
/// - When outside the `<head>` element, `<noscript>` can contain any content that would be valid in its parent element
/// - A `<noscript>` element cannot contain another `<noscript>` element
///
public struct Noscript: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "noscript" }

    /// Creates a new Noscript element with the specified content.
    public init(

        )
    {

    }
}
