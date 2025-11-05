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

/// Represents an HTML `<script>` element, which is used to embed executable code or data.
///
/// The `Script` struct provides a type-safe way to create HTML script elements with various attributes.
/// This element is typically used to embed or refer to JavaScript code, but can also be used with other
/// languages such as WebGL's GLSL shader programming language and JSON.
///
/// ## Basic Examples
///
/// ```swift
/// // External script
/// script.src("javascript.js")
///
/// // Inline script
/// script {
///     "alert('Hello World!');"
/// }
/// ```
///
/// ## Using Async and Defer
///
/// - `async`: Scripts will download in parallel to parsing and execute as soon as they are available.
///   Use when scripts run independently and don't depend on other scripts.
///
/// ```swift
/// script.src("analytics.js").async(true)
/// ```
///
/// - `defer`: Scripts will load in the order they appear and execute after the page content is loaded.
///   Use when scripts depend on the DOM being in place.
///
/// ```swift
/// script.src("ui-framework.js").defer(true)
/// ```
///
/// ## Module Scripts
///
/// ```swift
/// script.src("module.js").type(.module)
/// ```
///
/// ## Best Practices
///
/// - Use `async` for scripts that don't depend on other scripts or DOM elements
/// - Use `defer` for scripts that depend on the DOM being in place
/// - For critical functionality, consider placing scripts at the end of the body
/// - Use the `integrity` attribute for subresource integrity when loading external scripts
/// - Specify `type="module"` for ES modules
///
public struct Script: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "script" }

    /// The URL of an external script file
    public var src: HTMLAttributeTypes.Src?

    /// Indicates that the script should be executed asynchronously
    public var async: HTMLAttributeTypes.Async?

    /// Indicates that the script should be executed after the document has been parsed
    public var `defer`: HTMLAttributeTypes.Defer?

    /// Indicates the type of script represented
    public var type: HTMLAttributeTypes.ScriptType?

    /// Indicates integrity metadata for the script
    public var integrity: HTMLAttributeTypes.Integrity?

    /// Indicates which referrer to send when fetching the script
    public var referrerpolicy: HTMLAttributeTypes.ReferrerPolicy?

    /// Indicates that the script should not be executed in browsers that support ES modules
    public var nomodule: HTMLAttributeTypes.Nomodule?

    /// Provides a hint of the relative priority to use when fetching the script
    public var fetchpriority: HTMLAttributeTypes.FetchPriority?

    /// Explicitly indicates that certain operations should be blocked on the fetching of the script
    public var blocking: HTMLAttributeTypes.Blocking?

    /// Indicates how the element handles crossorigin requests
    public var crossorigin: HTMLAttributeTypes.Crossorigin?

    /// A cryptographic nonce for Content-Security-Policy
    public var nonce: HTMLAttributeTypes.Nonce?

    /// For registration with the Attribution Reporting API
    public var attributionsrc: HTMLAttributeTypes.AttributionSrc?

    /// Creates a new Script element with the specified attributes.
    ///
    /// - Parameters:
    ///   - src: The URL of an external script file
    ///   - async: Indicates that the script should be executed asynchronously
    ///   - defer: Indicates that the script should be executed after the document has been parsed
    ///   - type: Indicates the type of script represented
    ///   - integrity: Integrity metadata for subresource integrity
    ///   - referrerpolicy: Indicates which referrer to send when fetching the script
    ///   - nomodule: Indicates that the script should not be executed in browsers that support ES modules
    ///   - fetchpriority: Provides a hint of the relative priority for fetching
    ///   - blocking: Indicates operations that should be blocked on script fetching
    ///   - crossorigin: Indicates how the element handles crossorigin requests
    ///   - nonce: A cryptographic nonce for Content-Security-Policy
    ///   - attributionsrc: For registration with the Attribution Reporting API
    public init(
        src: HTMLAttributeTypes.Src? = nil,
        async: HTMLAttributeTypes.Async? = nil,
        defer: HTMLAttributeTypes.Defer? = nil,
        type: HTMLAttributeTypes.ScriptType? = nil,
        integrity: HTMLAttributeTypes.Integrity? = nil,
        referrerpolicy: HTMLAttributeTypes.ReferrerPolicy? = nil,
        nomodule: HTMLAttributeTypes.Nomodule? = nil,
        fetchpriority: HTMLAttributeTypes.FetchPriority? = nil,
        blocking: HTMLAttributeTypes.Blocking? = nil,
        crossorigin: HTMLAttributeTypes.Crossorigin? = nil,
        nonce: HTMLAttributeTypes.Nonce? = nil,
        attributionsrc: HTMLAttributeTypes.AttributionSrc? = nil
    ) {
        self.src = src
        self.async = async
        self.defer = `defer`
        self.type = type
        self.integrity = integrity
        self.referrerpolicy = referrerpolicy
        self.nomodule = nomodule
        self.fetchpriority = fetchpriority
        self.blocking = blocking
        self.crossorigin = crossorigin
        self.nonce = nonce
        self.attributionsrc = attributionsrc

    }
}
