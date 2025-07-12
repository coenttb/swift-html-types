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


/// The type of resource being loaded by the link.
///
/// This attribute is required when `rel="preload"` has been set on the link element,
/// optional when `rel="modulepreload"` has been set, and otherwise should not be used.
///
/// It specifies the type of content being loaded, which is necessary for request matching,
/// application of correct content security policy, and setting of correct Accept request header.
public struct As: StringAttribute {
    @inlinable public static var attribute: String { "as" }
    
    public let rawValue: String
    
    public init(value: String) {
        self.rawValue = value
    }
}

extension As {
    /// For `<audio>` elements
    public static let audio: Self = "audio"
    /// For `<iframe>` and `<frame>` elements
    public static let document: Self = "document"
    /// For `<embed>` elements
    public static let embed: Self = "embed"
    /// For fetch, XHR requests
    public static let fetch: Self = "fetch"
    /// For CSS @font-face
    public static let font: Self = "font"
    /// For images and SVGs
    public static let image: Self = "image"
    /// For `<object>` elements
    public static let object: Self = "object"
    /// For `<script>` elements, Worker importScripts
    public static let script: Self = "script"
    /// For stylesheets
    public static let style: Self = "style"
    /// For `<track>` elements
    public static let track: Self = "track"
    /// For Worker, SharedWorker
    public static let worker: Self = "worker"
}
