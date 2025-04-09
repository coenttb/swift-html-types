//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 04/04/2025.
//


public struct Form: Sendable, Equatable {
    
    /// A string indicating the URL to which to submit the data. This takes precedence over the action attribute on the `<form>` element that owns the `<input>`.
    ///
    /// This attribute is also available on `<input type="submit">` and `<button>` elements.
    public var action: HTMLAttributeTypes.Action?
    
    /// A string that identifies the encoding method to use when submitting the form data to the server.
    public var enctype: HTMLAttributeTypes.Enctype?
    
    /// A string indicating the HTTP method to use when submitting the form's data; this value overrides any method attribute given on the owning form.
    public var method: HTMLAttributeTypes.Method?
    
    /// A Boolean attribute which, if present, specifies that the form should not be validated before submission to the server. This overrides the value of the novalidate attribute on the element's owning form.
    public var novalidate: HTMLAttributeTypes.Novalidate?
    
    /// A string which specifies a name or keyword that indicates where to display the response received after submitting the form. The string must be the name of a browsing context (that is, a tab, window, or `<iframe>`. A value specified here overrides any target given by the target attribute on the `<form>` that owns this input.
    public var target: HTMLAttributeTypes.Target?
    
    /// Create a new form override configuration
    public init(
        action: HTMLAttributeTypes.Action? = nil,
        enctype: HTMLAttributeTypes.Enctype? = nil,
        method: HTMLAttributeTypes.Method? = nil,
        novalidate: HTMLAttributeTypes.Novalidate? = nil,
        target: HTMLAttributeTypes.Target? = nil
    ) {
        self.action = action
        self.enctype = enctype
        self.method = method
        self.novalidate = novalidate
        self.target = target
    }
}

extension Form {
    public mutating func action(_ value: HTMLAttributeTypes.Action?) {
        self.action = value
    }
    
    public mutating func enctype(_ value: HTMLAttributeTypes.Enctype?) {
        self.enctype = value
    }
    public mutating func method(_ value: HTMLAttributeTypes.Method?) {
        self.method = value
    }
    public mutating func novalidate(_ value: HTMLAttributeTypes.Novalidate?) {
        self.novalidate = value
    }
    public mutating func target(_ value: HTMLAttributeTypes.Target?) {
        self.target = value
    }
}

extension Form {
    public typealias ID = String
//    public typealias Enctype = HTMLAttributeTypes.Enctype
//    public typealias Target = HTMLAttributeTypes.Target
//    public typealias Action = HTMLAttributeTypes.Action
//    public typealias Method = HTMLAttributeTypes.Method
//    public typealias Novalidate = HTMLAttributeTypes.Novalidate
}

