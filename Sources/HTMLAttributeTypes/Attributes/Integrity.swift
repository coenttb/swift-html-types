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

/// Represents the HTML `integrity` attribute, which contains inline metadata
/// for verifying subresource integrity (SRI).
///
/// Subresource Integrity (SRI) is a security feature that enables browsers to verify
/// that resources fetched from external sources have been delivered without unexpected
/// manipulation. The browser verifies that a fetched resource's cryptographic hash
/// matches the hash provided in the integrity attribute.
///
/// ## Format
///
/// The attribute value is a string containing one or more cryptographic hashes, each
/// prefixed by the hash algorithm used, and separated by spaces if more than one.
///
/// Supported hash algorithms include:
/// - `sha256`
/// - `sha384`
/// - `sha512`
///
/// ## Usage Notes
///
/// - Use this attribute with resources loaded from third-party servers
/// - The hash must be recalculated whenever the resource changes
/// - Different hash algorithms can be specified for backward compatibility
/// - This attribute is commonly used with `<script>` and `<link>` elements
///
/// ## Examples
///
/// ```html
/// <script
///   src="https://example.com/example-framework.js"
///   integrity="sha384-oqVuAfXRKap7fdgcCY5uykM6+R9GqQ8K/uxy9rx7HNQlGYl1kPzQho1wx4JwY8wC"
///   crossorigin="anonymous">
/// </script>
/// ```
///
/// ## Security Benefits
///
/// - Mitigates the risk of CDN compromise or man-in-the-middle attacks
/// - Ensures resource integrity even when served from untrusted sources
/// - Provides defense against compromised third-party resources
///
@dynamicMemberLookup
public struct Integrity: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "integrity" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the integrity attribute
    public init(value: String) {
        self.rawValue = value
    }
}

extension Integrity {
    /// Creates an integrity hash using the SHA-256 algorithm
    public static func sha256(_ hash: String) -> Integrity {
        return Integrity("sha256-\(hash)")
    }

    /// Creates an integrity hash using the SHA-384 algorithm
    public static func sha384(_ hash: String) -> Integrity {
        return Integrity("sha384-\(hash)")
    }

    /// Creates an integrity hash using the SHA-512 algorithm
    public static func sha512(_ hash: String) -> Integrity {
        return Integrity("sha512-\(hash)")
    }
}
