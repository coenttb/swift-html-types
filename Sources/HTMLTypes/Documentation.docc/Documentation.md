# ``HTMLTypes``

A comprehensive, accurate, and type-safe domain model of HTML elements and attributes in Swift.

## Overview

The `swift-html-types` package provides a complete type-safe representation of HTML elements and their attributes. It ensures compile-time safety when working with HTML, preventing common errors like using invalid attributes on specific elements.

The package is organized into several focused modules:

- **HTMLTypes**: The main umbrella module that re-exports all core functionality
- **HTMLAttributeTypes**: Type-safe HTML attribute definitions and protocols
- **HTMLElementTypes**: HTML element types with their permitted attributes
- **HTMLTypesFoundation**: Foundation integration for enhanced URL and string handling

### Key Benefits

- **Type Safety**: Compile-time validation of HTML structure and attributes
- **Discoverability**: IDE autocompletion reveals valid attributes for each element
- **Accuracy**: Faithful representation of HTML5 specification
- **Composability**: Works seamlessly with other Swift HTML generation libraries

### Example Usage

```swift
import HTMLTypes

// Type-safe element creation with appropriate attributes
let anchor = Anchor(href: "https://example.com")
let searchInput = Input.search(
    name: "query", 
    placeholder: "Search...",
    required: true
)
```

## Topics

### Core Protocols

- ``HTMLElement``
- ``HTMLAttribute``
- ``HTMLVoidElement``

### Essential HTML Elements

- ``Anchor``
- ``Input``
- ``Image``
- ``ContentDivision``
- ``ContentSpan``
- ``Paragraph``

### Document Structure Elements

- ``HtmlRoot``
- ``Head``
- ``Body``
- ``Base``

### Form Elements

- ``Textarea``
- ``FieldSet``
- ``Legend``

### Table Elements

- ``TableRow``
- ``TableDataCell``
- ``TableHeader``

### Essential HTML Attributes

- ``Href``
- ``Src``  
- ``Alt``
- ``Id``
- ``Class``
- ``Value``
- ``Disabled``
- ``Required``

### Form Attributes

- ``Action``
- ``Method``
- ``Autocomplete``
- ``Pattern``
- ``Placeholder``
- ``Min``
- ``Max``

### Media Attributes

- ``Width``
- ``Height``
- ``Autoplay``
- ``Loop``
- ``Crossorigin``

### Foundation Integration

- ``HTMLTypesFoundation``
