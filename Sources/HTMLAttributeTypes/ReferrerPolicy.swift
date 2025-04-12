//===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//


/// Represents the HTML `referrerpolicy` attribute, which controls how much referrer information
/// is included when following links, loading images, or submitting forms.
///
/// The referrer policy affects the Referer HTTP header that is sent to the destination site,
/// specifying the URL of the page that linked to the current request. This attribute helps
/// control privacy and security aspects of navigation.
///
/// ## Usage
///
/// ```swift
/// // Prevent any referrer information from being sent
/// a(href: "https://example.com", referrerpolicy: .noReferrer) {
///     "Link with no referrer"
/// }
///
/// // Default browser behavior
/// a(href: "https://example.com", referrerpolicy: .strictOriginWhenCrossOrigin) {
///     "Link with default referrer policy"
/// }
/// ```
///
/// ## Security Considerations
///
/// - Using `.noReferrer` or `.sameOrigin` can protect user privacy.
/// - The `.unsafeUrl` policy leaks origins and paths from secure resources to insecure ones.
/// - If no policy is specified, browsers typically use `.strictOriginWhenCrossOrigin`.
///
/// This attribute is supported on various elements including `<a>`, `<area>`, `<img>`, `<iframe>`,
/// `<script>`, and `<link>` elements.
public struct ReferrerPolicy: StringAttribute {
    public static let attribute: String = "referrerpolicy"
    
    public var rawValue: String
    
    /// Initialize with a value
    public init(value: String) {
        self.rawValue = value
    }
}

extension ReferrerPolicy {
    /// No referrer information is sent
    public static let noReferrer: Self = "no-referrer"
    
    /// No referrer sent when navigating from HTTPS to HTTP
    public static let noReferrerWhenDowngrade: Self = "no-referrer-when-downgrade"
    
    /// Only send the origin (scheme, host, port) as the referrer
    public static let origin: Self = "origin"
    
    /// Full URL for same-origin requests, just origin for cross-origin
    public static let originWhenCrossOrigin: Self = "origin-when-cross-origin"
    
    /// Send referrer for same-origin requests only
    public static let sameOrigin: Self = "same-origin"
    
    /// Send origin as referrer only when security level stays the same
    public static let strictOrigin: Self = "strict-origin"
    
    /// Default behavior if none specified
    public static let strictOriginWhenCrossOrigin: Self = "strict-origin-when-cross-origin"
    
    /// Send full URL as referrer (not recommended for security reasons)
    public static let unsafeUrl: Self = "unsafe-url"
}
