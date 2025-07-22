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

/// An enumeration that controls how the element handles cross-origin requests.
///
/// The `crossorigin` attribute enables Cross-Origin Resource Sharing (CORS) for elements
/// that fetch external resources. It specifies whether to use CORS and if so, whether
/// to include credentials in cross-origin requests.
///
/// ## Usage Notes
///
/// - Valid on `<audio>`, `<img>`, `<link>`, `<script>`, and `<video>` elements
/// - Controls how cross-origin requests are handled
/// - When not specified, CORS is not used at all
/// - For web manifests requiring credentials, use `use-credentials`
///
/// ## Values
///
/// - `anonymous`: Sends CORS request without credentials (cookies, client certificates, etc.)
/// - `useCredentials`: Sends CORS request with credentials
/// - An empty string or invalid value is equivalent to `anonymous`
///
/// ## Element-Specific Behavior
///
/// When the attribute is not specified:
///
/// - For `<img>`, `<audio>`, `<video>`: When placed in `<canvas>`, the element is marked as tainted
/// - For `<script>`: Access to error logging via `window.onerror` is limited
/// - For `<link>`: Requests without appropriate CORS headers may be discarded
///
/// ## Examples
///
/// Loading a script without credentials:
/// ```html
/// <script src="https://example.com/script.js" crossorigin="anonymous"></script>
/// ```
///
/// Loading a web manifest with credentials:
/// ```html
/// <link rel="manifest" href="/app.webmanifest" crossorigin="use-credentials">
/// ```
@dynamicMemberLookup
public struct Crossorigin: HTMLStringAttribute {

    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "crossorigin" }

    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension Crossorigin {
    /// A cross-origin request is performed, but no credentials are sent
    @inlinable public static var anonymous: Self { "anonymous" }

    /// A cross-origin request is performed along with credentials
    @inlinable public static var useCredentials: Self { "use-credentials" }
}
