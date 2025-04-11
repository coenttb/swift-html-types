//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 08/04/2025.
//


/// Represents the playsinline attribute for the video element.
public struct Playsinline: BooleanAttribute {
    public let value: Bool
    
    public init(value: Bool) {
        self.value = value
    }
    
    /// The name of the HTML attribute
    public static let attribute: String = "playsinline"

}
