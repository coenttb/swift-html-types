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

/// The type of resource being loaded by the link.
///
/// This attribute is required when `rel="preload"` has been set on the link element,
/// optional when `rel="modulepreload"` has been set, and otherwise should not be used.
///
/// It specifies the type of content being loaded, which is necessary for request matching,
/// application of correct content security policy, and setting of correct Accept request header.
@dynamicMemberLookup
public struct As: HTMLStringAttribute {
    @inlinable public static var attribute: String { "as" }

    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension As {
    /// For `<audio>` elements
    @inlinable public static var audio: Self { "audio" }
    /// For `<iframe>` and `<frame>` elements
    @inlinable public static var document: Self { "document" }
    /// For `<embed>` elements
    @inlinable public static var embed: Self { "embed" }
    /// For fetch, XHR requests
    @inlinable public static var fetch: Self { "fetch" }
    /// For CSS @font-face
    @inlinable public static var font: Self { "font" }
    /// For images and SVGs
    @inlinable public static var image: Self { "image" }
    /// For `<object>` elements
    @inlinable public static var object: Self { "object" }
    /// For `<script>` elements, Worker importScripts
    @inlinable public static var script: Self { "script" }
    /// For stylesheets
    @inlinable public static var style: Self { "style" }
    /// For `<track>` elements
    @inlinable public static var track: Self { "track" }
    /// For Worker, SharedWorker
    @inlinable public static var worker: Self { "worker" }
}
