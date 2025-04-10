# swift-html-types

A Swift package that provides strongly-typed domain model of HTML elements and attributes. The HTML types in this package closely mirror the HTML5 specification, enabling compile-time validation of HTML structure and attributes.

![Development Status](https://img.shields.io/badge/status-active--development-blue.svg)

This package is currently in active development and is subject to changes. Features and APIs may change without prior notice until a stable release is available.

## Features

- **Type-safe HTML elements**: All HTML5 elements represented as Swift types
- **Type-safe HTML attributes**: Strongly-typed attributes with appropriate constraints
- **Compile-time validation**: Catch invalid HTML structure and attribute usage at compile time
- **Comprehensive coverage**: Support for all standard HTML5 elements and attributes
- **Bring Your Own integration**: Designed as a foundation for Swift packages that provide a Swift HTML Domain Specific Language (DSL)

## Examples

```swift
import HTMLTypes

// Create elements with appropriate attributes
let anchor = Anchor(href: "https://example.com")
let anchor = a(href: "https://example.com")

or 

import HTMLTypesFoundation

let url: Foundation.URL = .init(...)

let anchor = Anchor(url: url)
let anchor = a(url: url)

```

## Installation

### Swift Package Manager

Add the dependency in your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/coenttb/swift-html-types", branch: "main")
]
```

### Xcode

1. Select File > Add Packages...
2. Enter package URL: `https://github.com/coenttb/swift-html-types`
3. Choose the main branch or a specific version

## Related Projects

* [swift-css](https://www.github.com/coenttb/swift-css-types): [launching soon...] A Swift package that provides strongly-typed domain model for CSS styles.
* [swift-html](https://www.github.com/coenttb/swift-html): A Swift DSL for type-safe HTML & CSS, integrating with this package.
* [swift-web](https://www.github.com/coenttb/swift-web): Foundational tools for web development in Swift.
* [coenttb-html](https://www.github.com/coenttb/coenttb-html): Builds on swift-html and adds functionality for HTML components, PDF generation, and more.
* [swift-languages](https://www.github.com/coenttb/swift-languages): A package for cross-platform translations using Swift.

## Contribution

Contributions are welcome! Please feel free to submit a Pull Request.

## Feedback

If you have suggestions or find issues, please open a GitHub issue. Your feedback helps make this project better for everyone.

> [Subscribe to my newsletter](http://coenttb.com/en/newsletter/subscribe)
>
> [Follow me on X](http://x.com/coenttb)
> 
> [Connect on LinkedIn](https://www.linkedin.com/in/tenthijeboonkkamp)

## License

This project is licensed under the Apache 2.0 License. See [LICENSE](LICENSE) for details.
