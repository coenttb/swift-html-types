//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//


public struct Loop: BooleanAttribute {
    /// The name of the HTML attribute
    public static let attribute: String = "loop"
    
    public var value: Bool
  
    public init(value: Bool) {
        self.value = value
    }
}

