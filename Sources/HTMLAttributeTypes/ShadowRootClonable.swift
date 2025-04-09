//
//  ShadowRootClonable.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 08/04/2025.
//

import Foundation

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
public struct ShadowRootClonable: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "shadowrootclonable"
    
    /// The attribute value
    package let value: String
    
    /// Initialize with a value
    public init(_ value: String) {
        self.value = value
    }
}

extension ShadowRootClonable: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}

extension ShadowRootClonable: CustomStringConvertible {
    /// Returns the string representation of the attribute value
    public var description: String {
        return self.value
    }
}
