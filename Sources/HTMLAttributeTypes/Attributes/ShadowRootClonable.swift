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

/// The `shadowrootclonable` attribute specifies whether the shadow root of an element can be cloned,
/// allowing it to be included when the element is cloned through methods like `cloneNode()`.
///
/// ## Usage Notes
///
/// - This attribute controls whether the shadow DOM of an element is cloned when the element itself is cloned
/// - When set to "true", the shadow root will be cloned along with the element
/// - When set to "false" or not specified, the shadow root will not be cloned
///
/// ## Examples
///
/// ```html
/// <template shadowrootclonable="true"></template>
/// ```
public struct ShadowRootClonable: HTMLBooleanAttribute, CustomStringConvertible {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "shadowrootclonable" }

    public var rawValue: Bool

    public init(value: Bool = true) {
        self.rawValue = value
    }
}
