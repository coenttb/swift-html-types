# Swift HTML Types Guide

This document outlines guidelines for working with the Swift HTML Types project.

## Converting Attribute to StringAttribute

When converting an `Attribute` implementation to use `StringAttribute`:

1. Change the conformance from `Attribute` to `StringAttribute`
2. Replace `public var value: String` with `public let rawValue: String`
3. Add the required `public init(value: String)` initializer
4. Keep any custom initializers, but update them to use `rawValue` instead of `value`
5. Remove `ExpressibleByStringLiteral` and `CustomStringConvertible` extensions (already provided by `StringAttribute`)

Example conversion:

```swift
// Before
public struct Example: Attribute {
    public static let attribute: String = "example"
    
    public var value: String
    
    public init(_ value: String) {
        self.value = value
    }
}

extension Example: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}

extension Example: CustomStringConvertible {
    public var description: String {
        return self.value
    }
}

// After
public struct Example: StringAttribute {
    public static let attribute: String = "example"
    
    public let rawValue: String
    
    public init(value: String) {
        self.rawValue = value
    }
    
    public init(_ value: String) {
        self.rawValue = value
    }
}
```

## Test Improvement Guidelines

When improving existing tests, consider the following:

1. Use parameterized testing with `arguments` for more maintainable tests
2. Test all enum cases explicitly using `CaseIterable` conformance
3. Verify protocol conformance (e.g., CaseIterable, Equatable)
4. Test raw value handling and matching with descriptions
5. Test initialization from raw values, including invalid inputs
6. Ensure all properties are tested
7. Use descriptive test names and test suite names

## Parameterized Testing Best Practices

Use parameterized testing to increase test coverage and improve maintainability:

```swift
// Testing all enum cases using CaseIterable
@Test(
    "Enum cases description should match the spec",
    arguments: MyEnum.allCases
)
func cases(value: MyEnum) {
    switch value {
    case .case1: #expect(value.description == "case1")
    case .case2: #expect(value.description == "case2")
    // ...
    }
}

// Testing initialization with multiple scenarios
@Test(
    "Enum should be initializable from rawValue",
    arguments: [
        ("validValue1", MyEnum.case1),
        ("validValue2", MyEnum.case2),
        ("invalidValue", nil)
    ]
)
func initializableFromRawValue(input: String, expected: MyEnum?) {
    #expect(MyEnum(rawValue: input) == expected)
}
```

## Test Commands

Run tests with:

```bash
swift test
```

## Documentation Resources

For HTML attribute documentation, refer to:
- [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes)
- [W3C HTML Specification](https://html.spec.whatwg.org/multipage/dom.html#global-attributes)