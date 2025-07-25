# swift-html-types

A comprehensive, accurate, and type-safe domain model of HTML elements and attributes in Swift.

## Examples

```swift
import HTMLTypes

// Create elements with appropriate attributes
let anchor = Anchor(href: "https://example.com")
let input = Input.search(name: "query", placeholder: "Search...")
```

### Foundation integration for URL safety

```swift
import HTMLTypesFoundation

let url: Foundation.URL = .init(...)

let anchor = Anchor(url: url)
```

## Motivation

A domain model for HTML brings many benefits. In particular, this package improves discoverability of available attributes for each HTML element, for example invoking the search static func on input reveals the available attributes (except global attributes, which should be applied via methods):

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

Contrast this with other input types, like color, that permit a different set of attributes:
```swift
let input = Input.color(
  name: Name?,
  value: Value<String>?,
  disabled: Disabled?,
  form: Form.ID?
)
```

> [!NOTE]
> `swift-html-types` is part of a modular ecosystem for HTML generation in Swift. Rather than building one monolithic package, I created focused packages that compose together: `swift-html-types` provides the foundational types, while other packages handle rendering, styling, and developer experience.
>
> [Read about the architectural decisions behind this approach →](https://coenttb.com/blog/4)

## Showcases

- [coenttb/swift-html](https://github.com/coenttb/swift-html) - A Swift DSL for domain-accurate and type-safe HTML & CSS.
- [coenttb/coenttb-com-server](https://github.com/coenttb/coenttb-com-server) - 100% Swift server & website, built in `swift-html-types`.

Using `swift-html-types` in your project? Open an issue or submit a PR to add your project to this list!

## Installation

### Swift Package Manager

Add the dependency in your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/coenttb/swift-html-types", from: "0.0.1")
]
```

### Xcode

1. Select File > Add Packages...
2. Enter package URL: `https://github.com/coenttb/swift-html-types`
3. Choose the main branch or a specific version

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
