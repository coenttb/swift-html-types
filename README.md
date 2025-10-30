# swift-html-types

[![CI](https://github.com/coenttb/swift-html-types/workflows/CI/badge.svg)](https://github.com/coenttb/swift-html-types/actions/workflows/ci.yml)
![Development Status](https://img.shields.io/badge/status-active--development-blue.svg)

A comprehensive, accurate, and type-safe domain model of HTML elements and attributes in Swift.

## Overview

swift-html-types provides a complete Swift representation of HTML elements and their attributes, offering compile-time safety and excellent discoverability through type-safe APIs. The package is designed to be a foundational building block for Swift-based HTML generation and manipulation tools.

## Features

- **Complete HTML element coverage**: All standard HTML elements represented as Swift types
- **Type-safe attributes**: Each element exposes only its valid attributes with appropriate types
- **Excellent discoverability**: IDE autocomplete reveals available attributes per element
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

## Related Projects

- [swift-html](https://www.github.com/coenttb/swift-html): Type-safe HTML & CSS DSL for Swift
- [swift-css-types](https://www.github.com/coenttb/swift-css-types): Strongly-typed CSS properties and types
- [coenttb-com-server](https://www.github.com/coenttb/coenttb-com-server): Production server built with swift-html-types

## Development Status

This package is in active development. Features and APIs may change until a stable 1.0 release.

> **Note**: swift-html-types is part of a modular ecosystem for HTML generation in Swift. Rather than building one monolithic package, I created focused packages that compose together: swift-html-types provides the foundational types, while other packages handle rendering, styling, and developer experience.
>
> [Read about the architectural decisions behind this approach →](https://coenttb.com/blog/4)

## Showcases

- [coenttb/swift-html](https://github.com/coenttb/swift-html) - A Swift DSL for domain-accurate and type-safe HTML & CSS
- [coenttb/coenttb-com-server](https://github.com/coenttb/coenttb-com-server) - 100% Swift server & website, built with swift-html-types

Using swift-html-types in your project? Open an issue or submit a PR to add your project to this list!

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Feedback

If you have suggestions or find issues, please open a GitHub issue.

> [Subscribe to my newsletter](http://coenttb.com/en/newsletter/subscribe)
> [Follow me on X](http://x.com/coenttb)
> [Connect on LinkedIn](https://www.linkedin.com/in/tenthijeboonkkamp)

## License

This project is licensed under the Apache 2.0 License. See [LICENSE](LICENSE) for details.
