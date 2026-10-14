import Geometry
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Span {

    public struct Attribute: WHATWG.HTML.StringAttribute, ExpressibleByIntegerLiteral {

        public var width: Int

        @inlinable public init(value: String) {
            var scalars = value.unicodeScalars.drop { ["\u{20}", "\u{09}", "\u{0A}", "\u{0C}", "\u{0D}"].contains($0) }
            let negative = scalars.first == "-"
            if negative || scalars.first == "+" {
                scalars = scalars.dropFirst()
            }
            let digits = scalars.prefix { ("0"..."9").contains($0) }
            let parsed = digits.reduce(0) { Swift::min($0 * 10 + Int($1.value &- 0x30), 1001) }
            self.width = !negative && !digits.isEmpty && (1...1000).contains(parsed) ? parsed : 1
        }

        @inlinable public init(_ value: Int) {
            precondition(value > 0, "Span value must be a positive integer")
            self.width = value
        }

        @inlinable public init(integerLiteral value: Int) {
            precondition(value > 0, "Span value must be a positive integer")
            self.width = value
        }
    }
}

extension WHATWG.HTML.Span.Attribute {

    @inlinable public static var attribute: String { "span" }

    @inlinable public var rawValue: String { width.description }
}
