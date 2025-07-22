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

/// Represents the HTML `fetchpriority` attribute, which provides a hint of the relative
/// priority to use when fetching a resource of a particular type.
///
/// The `fetchpriority` attribute allows developers to signal how the browser should
/// prioritize fetching a particular resource relative to other resources of the same type.
/// This helps browsers assign appropriate loading priorities to critical resources.
///
/// ## Example
///
/// ```html
/// <!-- HTML Example -->
/// <img src="hero.jpg" fetchpriority="high">
/// <img src="decoration.jpg" fetchpriority="low">
/// <link rel="preload" href="critical.css" as="style" fetchpriority="high">
/// ```
///
/// ## Usage Notes
///
/// - This attribute should be used sparingly; excessive or incorrect prioritization can degrade performance
/// - Both the internal priority of any fetch operation and the impact of `fetchpriority` are browser-dependent
/// - Can be particularly useful for preloaded resources and critical render path assets
/// - Common use cases include prioritizing LCP (Largest Contentful Paint) images and critical CSS
///
/// ## Valid Elements
///
/// - `<img>`: For prioritizing image loading
/// - `<link>`: For prioritizing preloaded resources
/// - `<script>`: For prioritizing script loading
/// - `<iframe>`: For prioritizing iframe content loading
@dynamicMemberLookup
public struct FetchPriority: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "fetchpriority" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the size attribute
    public init(value: String) {
        self.rawValue = value
    }
}

extension FetchPriority {
    /// Fetch the resource at a high priority relative to other resources of the same type.
    ///
    /// Use for critical resources that significantly impact user experience, such as:
    /// - LCP (Largest Contentful Paint) images
    /// - Critical CSS required for initial render
    /// - Important scripts needed early in the page lifecycle
    @inlinable public static var high: Self { "high" }

    /// Fetch the resource at a low priority relative to other resources of the same type.
    ///
    /// Use for non-critical resources that don't significantly impact initial user experience, such as:
    /// - Below-the-fold images
    /// - Non-critical scripts
    /// - Analytics and tracking code
    @inlinable public static var low: Self { "low" }

    /// Don't set a preference for the fetch priority (default).
    ///
    /// This is used if no value is explicitly set or if an invalid value is set.
    /// The browser will use its default prioritization heuristics.
    @inlinable public static var auto: Self { "auto" }
}

extension FetchPriority: CaseIterable {
    public static let allCases: [FetchPriority] = [.high, .low, .auto]
}
