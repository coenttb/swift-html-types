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

/// Represents an HTML head element (`<head>`), which contains machine-readable information (metadata) about the document.
///
/// The `Head` struct provides a type-safe way to create HTML head elements that contain metadata like the document title,
/// scripts, and style sheets. There can be only one `<head>` element in an HTML document.
///
/// ## Example
///
/// ```swift
/// head {
///     title { "Document title" }
///     meta(charset: "UTF-8")
///     meta(name: "viewport", content: "width=device-width")
/// }
/// ```
///
/// ## Best Practices
///
/// - Always include a `<title>` element within the head
/// - Use appropriate meta tags for character encoding and viewport settings
/// - Include relevant stylesheets and scripts
/// - The head element primarily holds information for machine processing, not human-readability
///
/// ## Elements commonly used inside `<head>`
/// - `<title>`: Sets the document title
/// - `<base>`: Specifies the base URL for relative URLs
/// - `<link>`: Links to external resources like stylesheets
/// - `<style>`: Contains document styling information
/// - `<meta>`: Provides metadata about the document
/// - `<script>`: Contains JavaScript code or links to external scripts
/// - `<noscript>`: Provides fallback content for browsers with JavaScript disabled
/// - `<template>`: Holds client-side template content
///
public struct Head: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "head" }

    /// Creates a new Head element with the specified content.
    public init() {}
}
