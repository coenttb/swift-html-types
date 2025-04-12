# swift-html-types

A complete Swift domain model of HTML elements and attributes. 
The HTML types in this package closely mirror the HTML5 specification, enabling compile-time validation of HTML structure and attributes.

![Development Status](https://img.shields.io/badge/status-active--development-blue.svg)

This package is currently in active development and is subject to changes. Features and APIs may change without prior notice until a stable release is available.

## Features

- **Type-safe HTML elements**: All HTML5 elements represented as Swift types
- **Type-safe HTML attributes**: Strongly-typed attributes with appropriate constraints
- **Comprehensive coverage**: Support for all standard HTML5 elements and attributes

> [!NOTE]
> This package serves as a foundational type system for Swift HTML DSL implementations. It provides the type definitions only and does not include HTML rendering functionality. Implementers will need to build their own rendering logic on top of these types.

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

This package improves discoverability of available attributes for each HTML element, for example invoking the search static func on input reveals the available attributes (except global attributes, which should be applied via methods):
```swift
let input = input.search(
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

Contrast this with other input types, like color, that permit a different set of attributes:
```swift
let input = input.color(
  name: Name?,
  value: Value<String>?,
  disabled: Disabled?,
  form: Form.ID?
)
```

## Showcases
This package serves as a foundational type system for these Swift HTML DSLs:

- [coenttb/swift-html](https://github.com/coenttb/swift-html) - A Swift DSL for type-safe HTML & CSS.

Using `swift-html-types` in your project? Open an issue or submit a PR to add your project to this list!

## Installation

### Swift Package Manager

Add the dependency in your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/coenttb/swift-html-types", branch: "0.0.1")
]
```

### Xcode

1. Select File > Add Packages...
2. Enter package URL: `https://github.com/coenttb/swift-html-types`
3. Choose the main branch or a specific version

## Related Projects

* [swift-css-types](https://www.github.com/coenttb/swift-css-types): A complete Swift domain model of CSS properties and types.
* [swift-html](https://www.github.com/coenttb/swift-html): A Swift DSL for type-safe HTML & CSS.
* [coenttb-html](https://www.github.com/coenttb/coenttb-html): Builds on swift-html and adds functionality for HTML components, PDF generation, and more.

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
