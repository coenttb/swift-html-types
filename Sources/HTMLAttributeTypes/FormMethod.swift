//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 07/04/2025.
//


/// An attribute that specifies the HTTP method for form submission.
///
/// The `method` attribute defines how the form data should be sent to the server.
/// Each method has different characteristics and is suitable for different scenarios.
///
/// ## Available Methods
///
/// - `GET` (default): Appends form data to the URL
/// - `POST`: Sends form data in the request body
/// - `DIALOG`: Special method for forms inside a dialog element
///
/// ## Method Characteristics
///
/// ### GET Method
/// - Form data is appended to the URL with a `?` separator
/// - Data is visible in the URL (not secure for sensitive information)
/// - Limited amount of data can be sent (URL length restrictions)
/// - Ideal for search forms and filters
/// - Bookmarkable results
/// - Should be used when the form has no side effects
///
/// ### POST Method
/// - Form data is sent in the HTTP request body
/// - Data is not visible in the URL (more secure for sensitive information)
/// - Can send large amounts of data (including file uploads)
/// - Not bookmarkable
/// - Should be used for forms that change data on the server
///
/// ### DIALOG Method
/// - Used specifically for forms inside a `<dialog>` element
/// - Closes the dialog without submitting any data
/// - Triggers a submit event on the form
/// - Does not clear the form fields
///
/// ## Usage Notes
///
/// - The method attribute is case-insensitive in HTML
/// - Can be overridden by `formmethod` attributes on submit buttons
/// - For complex data or file uploads, use POST with appropriate `enctype`
/// - RESTful applications may use different HTTP methods (PUT, DELETE, etc.) via JavaScript
///
/// ## Examples
///
/// ```swift
/// // Search form using GET
/// HTML.form.action("/search").method(.get)
///
/// // User registration form using POST
/// HTML.form.action("/register").method(.post).enctype(.multipartFormData)
///
/// // Form inside a dialog
/// HTML.form.method(.dialog)
///
/// // Using string value
/// HTML.form.method("post")
/// ```
public struct FormMethod: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "formmethod"
    
    /// The HTTP method value
    package let value: String
    
    /// Initialize with a method value
    public init(_ value: String) {
        self.value = value.lowercased()
    }
        
    /// GET method: data appended to the URL
    public static let get: Self = "get"
    
    /// POST method: data sent in the request body
    public static let post: Self = "post"
    
    /// DIALOG method: for forms inside a dialog element
    public static let dialog: Self = "dialog"
}

extension FormMethod: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value.lowercased()
    }
}

extension FormMethod: CustomStringConvertible {
    /// Returns the string representation of the method value
    public var description: String {
        return self.value
    }
}
