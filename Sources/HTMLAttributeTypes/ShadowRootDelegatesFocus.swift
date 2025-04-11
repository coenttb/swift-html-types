//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 08/04/2025.
//

public struct ShadowRootDelegatesFocus: BooleanAttribute {
    public let value: Bool
    
    public init(value: Bool) {
        self.value = value
    }
    
    public static let attribute: String = "shadowrootdelegatesfocus"
}

