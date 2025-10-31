# swift-html-types

[![CI](https://github.com/coenttb/swift-html-types/workflows/CI/badge.svg)](https://github.com/coenttb/swift-html-types/actions/workflows/ci.yml)
![Development Status](https://img.shields.io/badge/status-active--development-blue.svg)

Type-safe domain model of HTML elements and attributes in Swift.

## Overview

swift-html-types provides Swift representation of HTML elements and their attributes with compile-time safety. The package is designed as a foundational building block for Swift-based HTML generation and manipulation tools.

## Features

- **HTML element coverage**: Standard HTML elements represented as Swift types
- **Type-safe attributes**: Each element exposes only its valid attributes with appropriate types
- **IDE discoverability**: Autocomplete reveals available attributes per element
- **Input type specialization**: Different input types (search, color, email, etc.) have distinct signatures
- **Foundation integration**: Optional `HTMLTypesFoundation` module for URL safety
- **Modular design**: Focused package that composes with other HTML ecosystem packages

## Installation

### Swift Package Manager

Add the dependency in your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/coenttb/swift-html-types", from: "0.1.0")
]
```

### Xcode

1. Select File > Add Packages...
2. Enter package URL: `https://github.com/coenttb/swift-html-types`
3. Select version 0.1.0 or "Up to Next Major Version"

## Quick Start

```swift
import HTMLTypes

// Create elements with appropriate attributes
let anchor = Anchor(href: "https://example.com")
let input = Input.search(name: "query", placeholder: "Search...")
```

### Foundation integration for URL safety

```swift
import HTMLTypesFoundation

let url: Foundation.URL = .init(string: "https://example.com")!
let anchor = Anchor(href: Href(url))
```

## Usage

### Type-safe element creation

The package improves discoverability of available attributes for each HTML element. For example, invoking the `search` static func on `Input` reveals the available attributes:

```swift
let input = Input.search(
  name: Name?,
  value: Value<String>?,
  list: List?,
  maxlength: Maxlength?,
  minlength: Minlength?,
  pattern: Pattern?,
  placeholder: Placeholder?,
  readonly: Readonly?,
  size: Size?,
  spellcheck: Spellcheck?,
  required: Required?,
  disabled: Disabled?,
  form: Form.ID?
)
```

Contrast this with other input types, like `color`, that permit a different set of attributes:

```swift
let input = Input.color(
  name: Name?,
  value: Value<String>?,
  disabled: Disabled?,
  form: Form.ID?
)
```

Each input type exposes only the attributes that are semantically valid for that type, providing compile-time safety and better developer experience.

## Requirements

- Swift 5.9+
- macOS 14.0+ / iOS 17.0+ / Linux

## Related Packages

### Used By

- [swift-html](https://github.com/coenttb/swift-html): The Swift library for domain-accurate and type-safe HTML & CSS.
- [swift-html-css-pointfree](https://github.com/coenttb/swift-html-css-pointfree): A Swift package integrating swift-html-types and swift-css-types with pointfree-html.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the Apache 2.0 License. See [LICENSE](LICENSE) for details.
