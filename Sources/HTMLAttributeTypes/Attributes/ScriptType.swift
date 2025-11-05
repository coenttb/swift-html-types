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

/// Represents the HTML type attribute for the `<script>` element.
///
/// The `type` attribute indicates the type of script represented. The most common values are:
/// - No type or empty string: Default behavior, indicates a classic JavaScript script
/// - `module`: Indicates the code is a JavaScript module
/// - `importmap`: Indicates the body contains an import map
/// - `speculationrules`: Indicates the body contains speculation rules
/// - Other MIME types: For embedding data or non-JavaScript code
///
/// ## Examples
///
/// ```html
/// <!-- Classic JavaScript (default) -->
/// <script src="script.js"></script>
///
/// <!-- JavaScript Module -->
/// <script type="module" src="module.js"></script>
///
/// <!-- Import Map -->
/// <script type="importmap">
///   {
///     "imports": {
///       "lodash": "/node_modules/lodash-es/lodash.js"
///     }
///   }
/// </script>
///
/// <!-- Data -->
/// <script type="application/json" id="data">
///   {"user": "John", "id": 123}
/// </script>
/// ```
@dynamicMemberLookup
public struct ScriptType: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "type" }

    /// The script type value
    public var rawValue: String

    /// Initialize with a string value
    public init(value: String) {
        self.rawValue = value
    }
}

extension ScriptType {

    /// JavaScript module
    public static let module = ScriptType("module")

    /// Import map
    public static let importmap = ScriptType("importmap")

    /// Speculation rules
    public static let speculationrules = ScriptType("speculationrules")

    /// JSON data
    public static let json = ScriptType("application/json")

    /// Text data
    public static let text = ScriptType("text/plain")
}
