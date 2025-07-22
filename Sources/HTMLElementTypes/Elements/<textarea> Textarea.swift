// ===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
// ===----------------------------------------------------------------------===//

import HTMLAttributeTypes

/// Represents an HTML textarea element (`<textarea>`), which is a multi-line plain-text editing control.
///
/// The `Textarea` struct provides a type-safe way to create HTML textarea elements, useful when
/// you want to allow users to enter sizeable amounts of free-form text, such as comments or feedback.
///
/// ## Example
///
/// ```swift
/// form {
///     label(for: "story") { "Tell us your story:" }
///     textarea(id: "story", name: "story", rows: 5, cols: 33) {
///         "It was a dark and stormy night..."
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Always associate a `<textarea>` with a `<label>` using the `for` attribute for accessibility
/// - Specify `rows` and `cols` attributes for consistent sizing across browsers
/// - Consider using `maxlength` and `minlength` to control the amount of text users can enter
/// - Use `placeholder` as a hint, but not as a replacement for a proper label
/// - Use CSS for styling rather than relying on HTML attributes
/// - Consider disabling textarea resizing with CSS `resize: none` if needed
///
public struct Textarea: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "textarea" }

    /// Controls whether inputted text is automatically capitalized
    public var autocapitalize: HTMLAttributeTypes.Autocapitalize?

    /// Controls whether entered text can be automatically completed by the browser
    public var autocomplete: HTMLAttributeTypes.Autocomplete?

    /// Controls automatic spelling correction while editing
    public var autocorrect: HTMLAttributeTypes.Autocorrect?

    /// Automatically focus the control when page loads
    public var autofocus: HTMLAttributeTypes.Autofocus?

    /// The visible width of the text control, in average character widths
    public var cols: Cols?

    /// Indicates the text directionality of the element contents
    public var dirname: HTMLAttributeTypes.Dirname?

    /// Whether the control is disabled
    public var disabled: HTMLAttributeTypes.Disabled?

    /// Associates the control with a form element
    public var form: HTMLAttributeTypes.Form.ID?

    /// Maximum number of characters allowed
    public var maxlength: HTMLAttributeTypes.Maxlength?

    /// Minimum number of characters required
    public var minlength: HTMLAttributeTypes.Minlength?

    /// Name of the control
    public var name: HTMLAttributeTypes.Name?

    /// Hint to the user of what can be entered
    public var placeholder: HTMLAttributeTypes.Placeholder?

    /// Whether the control is read-only
    public var readonly: HTMLAttributeTypes.Readonly?

    /// Whether the control is required
    public var required: HTMLAttributeTypes.Required?

    /// The number of visible text lines
    public var rows: Rows?

    /// Whether the textarea is subject to spell-checking
    public var spellcheck: HTMLAttributeTypes.Spellcheck?

    /// Indicates how the control wraps text for form submission
    public var wrap: TextareaWrap?

    /// Creates a new Textarea element with the specified attributes.
    ///
    /// - Parameters:
    ///   - autocapitalize: Controls how text input is automatically capitalized
    ///   - autocomplete: Controls browser's autocomplete feature
    ///   - autocorrect: Controls automatic spelling correction
    ///   - autofocus: Whether control should automatically get focus
    ///   - cols: Width of the control in character widths
    ///   - dirname: For text directionality
    ///   - disabled: Whether the control is disabled
    ///   - form: ID of the form this element belongs to
    ///   - maxlength: Maximum allowed character count
    ///   - minlength: Minimum required character count
    ///   - name: Name of the control for form submission
    ///   - placeholder: Text hint shown when field is empty
    ///   - readonly: Whether field is read-only
    ///   - required: Whether field is required
    ///   - rows: Height of control in number of text lines
    ///   - spellcheck: Whether spelling should be checked
    ///   - wrap: How text should wrap for form submission
    public init(
        autocapitalize: HTMLAttributeTypes.Autocapitalize? = nil,
        autocomplete: HTMLAttributeTypes.Autocomplete? = nil,
        autocorrect: HTMLAttributeTypes.Autocorrect? = nil,
        autofocus: HTMLAttributeTypes.Autofocus? = nil,
        cols: Cols? = nil,
        dirname: HTMLAttributeTypes.Dirname? = nil,
        disabled: HTMLAttributeTypes.Disabled? = nil,
        form: HTMLAttributeTypes.Form.ID? = nil,
        maxlength: HTMLAttributeTypes.Maxlength? = nil,
        minlength: HTMLAttributeTypes.Minlength? = nil,
        name: HTMLAttributeTypes.Name? = nil,
        placeholder: HTMLAttributeTypes.Placeholder? = nil,
        readonly: HTMLAttributeTypes.Readonly? = nil,
        required: HTMLAttributeTypes.Required? = nil,
        rows: Rows? = nil,
        spellcheck: HTMLAttributeTypes.Spellcheck? = nil,
        wrap: TextareaWrap? = nil
    ) {
        self.autocapitalize = autocapitalize
        self.autocomplete = autocomplete
        self.autocorrect = autocorrect
        self.autofocus = autofocus
        self.cols = cols
        self.dirname = dirname
        self.disabled = disabled
        self.form = form
        self.maxlength = maxlength
        self.minlength = minlength
        self.name = name
        self.placeholder = placeholder
        self.readonly = readonly
        self.required = required
        self.rows = rows
        self.spellcheck = spellcheck
        self.wrap = wrap

    }
}
