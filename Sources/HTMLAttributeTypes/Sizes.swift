///
/// Sizes.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 08/04/2025.
///

import Foundation

/// Represents the `sizes` attribute, which specifies the sizes of the linked resource.
///
/// The `sizes` attribute is used with `<link>`, `<img>`, and `<source>` elements to specify
/// the intended display size of the image or linked resource.
///
/// ## Usage Notes
///
/// - For `<img>` and `<source>` elements, it's used alongside the `srcset` attribute to help browsers select appropriate images
/// - For `<link rel="icon">`, it specifies the icon size
/// - Values can include specific sizes (e.g., "32x32") or the keyword "any"
///
/// ## Examples
///
/// ```html
/// <img srcset="image-320w.jpg 320w, image-480w.jpg 480w" sizes="(max-width: 600px) 320px, 480px">
/// <link rel="icon" href="favicon.png" sizes="16x16 32x32" type="image/png">
/// ```
public struct Sizes: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "sizes"
    
    /// The attribute value
    package let value: String
    
    /// Initialize with a value
    public init(_ value: String) {
        self.value = value
    }
}

extension Sizes: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}

extension Sizes: CustomStringConvertible {
    /// Returns the string representation of the attribute value
    public var description: String {
        return self.value
    }
}