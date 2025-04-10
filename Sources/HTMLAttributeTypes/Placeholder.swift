///
/// Placeholder.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 03/04/2025.
///


/// An attribute that provides a hint about the expected content of a form control.
///
/// The `placeholder` attribute displays text in a form control when it has no value.
/// It provides a brief hint to users about what kind of information is expected,
/// but should never be used as a replacement for a proper label.
///
/// ## Usage Notes
///
/// - Valid on text-based `<input>` types: text, search, url, tel, email, and password
/// - Also valid on `<textarea>` elements
/// - Placeholder text disappears as soon as the user starts typing or the field gains a value
/// - Cannot contain line feeds or carriage returns (except in `<textarea>`)
/// - Should provide a brief hint, not instructions or prompts
///
/// ## Accessibility Considerations
///
/// - **Never use placeholders instead of labels** - this is a critical accessibility issue
/// - Screen readers may not announce placeholder text by default
/// - Placeholder text has lower contrast and may be difficult for low-vision users to read
/// - Placeholder text disappears when users start typing, which can confuse users with cognitive issues
/// - Always pair with a proper `<label>` element
///
/// ## Examples
///
/// Basic usage with a label:
/// ```html
/// <label for="email">Email address:</label>
/// <input type="email" id="email" placeholder="example@domain.com">
/// ```
///
/// Textarea with placeholder:
/// ```html
/// <label for="bio">Biography:</label>
/// <textarea id="bio" placeholder="Tell us about yourself..."></textarea>
/// ```
public struct Placeholder: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "placeholder"
    
    /// The placeholder text
    package let value: String
    
    /// Initialize with placeholder text
    public init(_ text: String) {
        self.value = text
    }
    
    /// Create a placeholder for common input types
    
    /// Example email address placeholder
    public static let email = Placeholder("example@domain.com")
    
    /// Example phone number placeholder
    public static let phone = Placeholder("(123) 456-7890")
    
    /// Example name placeholder
    public static let name = Placeholder("First Last")
    
    /// Example search placeholder
    public static let search = Placeholder("Search...")
    
    /// Example URL placeholder
    public static let url = Placeholder("https://example.com")
}

extension Placeholder: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}

extension Placeholder: CustomStringConvertible {
    /// Returns the string representation of the placeholder value
    public var description: String {
        return self.value
    }
}
