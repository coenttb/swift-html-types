public import WHATWG_HTML_Shared

extension WHATWG.HTML.Form.Data.Entry {

    public struct List: Sendable {

        @usableFromInline internal var entries: [WHATWG.HTML.Form.Data.Entry]

        @inlinable public init() {
            self.entries = []
        }

        @inlinable public init(entries: [WHATWG.HTML.Form.Data.Entry]) {
            self.entries = entries
        }
    }
}

extension WHATWG.HTML.Form.Data.Entry.List {

    @inlinable public mutating func append(_ entry: WHATWG.HTML.Form.Data.Entry) {
        entries.append(entry)
    }

    @inlinable public mutating func append(name: String, value: WHATWG.HTML.Form.Data.Value) {
        append(WHATWG.HTML.Form.Data.Entry(name: name, value: value))
    }

    @inlinable public mutating func append(name: String, value: String) {
        append(WHATWG.HTML.Form.Data.Entry(name: name, value: .string(value)))
    }

    @inlinable public mutating func append(name: String, file: WHATWG.HTML.Form.Data.File) {
        append(WHATWG.HTML.Form.Data.Entry(name: name, value: .file(file)))
    }

    @inlinable public subscript(name: String) -> [WHATWG.HTML.Form.Data.Value]? {
        let values = entries.filter { $0.name == name }.map(\.value)
        return values.isEmpty ? nil : values
    }

    @inlinable public func first(named name: String) -> WHATWG.HTML.Form.Data.Value? {
        entries.first { $0.name == name }?.value
    }

    @inlinable public func all(named name: String) -> [WHATWG.HTML.Form.Data.Value] {
        entries.filter { $0.name == name }.map(\.value)
    }

    @inlinable public func contains(name: String) -> Bool {
        entries.contains { $0.name == name }
    }

    @inlinable @discardableResult public mutating func remove(name: String) -> Int {
        let initialCount = entries.count
        entries.removeAll { $0.name == name }
        return initialCount - entries.count
    }

    @inlinable public var count: Int { entries.count }

    @inlinable public var isEmpty: Bool { entries.isEmpty }

    @inlinable public var names: [String] {
        var seen = Set<String>()
        var result: [String] = []
        for entry in entries where seen.insert(entry.name).inserted {
            result.append(entry.name)
        }
        return result
    }
}

extension WHATWG.HTML.Form.Data.Entry.List: Swift::Collection {
    public typealias Index = Array<WHATWG.HTML.Form.Data.Entry>.Index
    public typealias Element = WHATWG.HTML.Form.Data.Entry

    @inlinable public var startIndex: Index { entries.startIndex }

    @inlinable public var endIndex: Index { entries.endIndex }

    @inlinable public subscript(position: Index) -> WHATWG.HTML.Form.Data.Entry {
        entries[position]
    }

    @inlinable public func index(after i: Index) -> Index { entries.index(after: i) }
}

extension WHATWG.HTML.Form.Data.Entry.List: Swift::Sequence {
    @inlinable public func makeIterator() -> Array<WHATWG.HTML.Form.Data.Entry>.Iterator {
        entries.makeIterator()
    }
}

extension WHATWG.HTML.Form.Data.Entry.List: ExpressibleByArrayLiteral {
    @inlinable public init(arrayLiteral elements: WHATWG.HTML.Form.Data.Entry...) {
        self.entries = elements
    }
}

extension WHATWG.HTML.Form.Data.Entry.List: Equatable {
    @inlinable public static func == (lhs: Self, rhs: Self) -> Bool { lhs.entries == rhs.entries }
}

extension WHATWG.HTML.Form.Data.Entry.List: Hashable {
    @inlinable public func hash(into hasher: inout Hasher) { hasher.combine(entries) }
}

extension WHATWG.HTML.Form.Data.Entry.List: CustomStringConvertible {
    public var description: String {
        let entryDescriptions = entries.map { entry in "\(entry.name): \(entry.value)" }
        return "EntryList(\(entryDescriptions.joined(separator: ", ")))"
    }
}

extension WHATWG.HTML.Form.Data.Entry.List: CustomDebugStringConvertible {
    public var debugDescription: String {
        """
        WHATWG.HTML.Form.Data.Entry.List(count: \(count)) {
        \(entries.map { "  \($0.name): \($0.value)" }.joined(separator: "\n"))
        }
        """
    }
}
