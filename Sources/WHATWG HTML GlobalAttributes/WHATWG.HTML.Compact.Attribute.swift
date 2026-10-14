public import WHATWG_HTML_Shared

extension WHATWG.HTML.Compact {

    @available(*, deprecated) @dynamicMemberLookup
    public struct Attribute: WHATWG.HTML.BooleanAttribute, CustomStringConvertible {
        public var rawValue: Bool

        public init(value: Bool = true) { self.rawValue = value }
    }
}

@available(*, deprecated)
extension WHATWG.HTML.Compact.Attribute {

    @inlinable public static var attribute: String { "compact" }
}
