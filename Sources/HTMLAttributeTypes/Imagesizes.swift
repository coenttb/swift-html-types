//For rel="preload" and as="image" only, the imagesizes attribute has similar syntax and semantics as the sizes attribute that indicates to preload the appropriate resource used by an img element with corresponding values for its srcset and sizes attributes.
//

public struct ImageSizes: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "imagesizes"
    
    /// The URL value
    package let value: String
    
    /// Initialize with a URL string
    public init(_ value: String) {
        self.value = value
    }
}

extension ImageSizes: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}

extension ImageSizes: CustomStringConvertible {
    /// Returns the string representation of the imagesizes value
    public var description: String {
        return self.value
    }
}

