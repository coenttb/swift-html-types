///
/// Class.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 02/04/2025.
///


/// A global attribute that specifies one or more class names for an HTML element.
///
/// The `class` attribute is used to specify one or more class names for an element, which can be used by:
/// - CSS to style elements with the same class name
/// - JavaScript to manipulate elements with specific class names (e.g., via `document.getElementsByClassName()`)
///
/// Class names are case-sensitive and must be separated by whitespace when multiple classes are applied.
///
/// ## Usage Notes
///
/// - The `class` attribute can be applied to any HTML element
/// - Multiple class names should be separated by spaces
/// - Class names should ideally be semantic rather than presentational
/// - Class names should be valid CSS identifiers to avoid needing escaping in selectors
///
/// ## Examples
///
/// Basic usage with a single class:
/// ```html
/// <p class="note">This is a note.</p>
/// ```
///
/// Multiple classes:
/// ```html
/// <p class="note editorial">This is an editorial note.</p>
/// ```
///
/// With different elements:
/// ```html
/// <div class="container">
///   <h1 class="title">Title</h1>
///   <p class="content">Content paragraph</p>
/// </div>
/// ```
public struct Class: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "class"
    
    /// The class names as a space-separated string
    package let value: String
    
    /// Initialize with a single class name
    public init(_ className: String) {
        self.value = className
    }
}

extension Class: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}

extension Class: CustomStringConvertible {
    /// Returns the string representation of the class value
    public var description: String {
        return self.value
    }
}

extension Class: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = String
    
    public init(arrayLiteral elements: String...) {
        self.value = elements.joined(separator: " ")
    }
}
