//
//  File.swift
//  swift-html-types
//
//  Created by Coen ten Thije Boonkkamp on 11/07/2025.
//

import HTMLAttributeTypes

extension Input.Variant {
    public static let button: Self = .button(.init())
    public static let checkbox: Self = .checkbox(.init())
    public static let color: Self = .color(.init())
    public static let date: Self = .date(.init())
    public static let datetimeLocal: Self = .datetimeLocal(.init())
    public static let email: Self = .email(.init())
    public static let file: Self = .file(.init())
    public static let hidden: Self = .hidden(.init())
    // not possible because image must have a src.
    //    public static let image: Self = .image(.init())
    public static let month: Self = .month(.init())
    public static let number: Self = .number(.init())
    public static let password: Self = .password(.init())
    public static let radio: Self = .radio(.init())
    public static let range: Self = .range(.init())
    public static let reset: Self = .reset(.init())
    public static let search: Self = .search(.init())
    public static let submit: Self = .submit(.init())
    public static let tel: Self = .tel(.init())
    public static let text: Self = .text(.init())
    public static let time: Self = .time(.init())
    public static let url: Self = .url(.init())
    public static let week: Self = .week(.init())
}

extension Input.Variant {
    public static func button(
        value: Value<String>?
    ) -> Self {
        .button(.init(value: value))
    }

    public static func checkbox(
        value: Value<String>?,
        checked: Checked?,
        required: Required?
    ) -> Self {
        .checkbox(
            .init(
                value: value,
                checked: checked,
                required: required
            )
        )
    }

    public static func color(
        value: Value<String>? = nil
    ) -> Self {
        .color(
            .init(
                value: value
            )
        )
    }

    public static func date(
        value: Value<String>? = nil,
        min: Min? = nil,
        max: Max? = nil,
        step: Step? = nil,
        required: Required? = nil
    ) -> Self {
        .date(
            .init(
                value: value,
                min: min,
                max: max,
                step: step,
                required: required
            )
        )
    }

    public static func datetimeLocal(
        value: Value<String>? = nil,
        min: Min? = nil,
        max: Max? = nil,
        step: Step? = nil,
        required: Required? = nil
    ) -> Self {
        .datetimeLocal(
            .init(
                value: value,
                min: min,
                max: max,
                step: step,
                required: required
            )
        )
    }

    public static func email(
        value: Value<String>? = nil,
        maxlength: Maxlength? = nil,
        minlength: Minlength? = nil,
        required: Required? = nil,
        multiple: Multiple? = nil,
        pattern: Pattern? = nil,
        placeholder: Placeholder? = nil,
        readonly: Readonly? = nil,
        size: Size? = nil
    ) -> Self {
        .email(
            .init(
                value: value,
                maxlength: maxlength,
                minlength: minlength,
                required: required,
                multiple: multiple,
                pattern: pattern,
                placeholder: placeholder,
                readonly: readonly,
                size: size
            )
        )
    }

    public static func file(
        accept: Accept? = nil,
        capture: Capture? = nil,
        multiple: Multiple? = nil,
        required: Required? = nil
    ) -> Self {
        .file(
            .init(
                accept: accept,
                capture: capture,
                multiple: multiple,
                required: required
            )
        )
    }

    public static func hidden(
        value: Value<String>? = nil
    ) -> Self {
        .hidden(
            .init(
                value: value
            )
        )
    }

    // Note: image must have a src parameter - it's required
    public static func image(
        src: Src,
        alt: Alt? = nil,
        height: Height? = nil,
        width: Width? = nil,
        required: Required? = nil,
        form: HTMLAttributeTypes.Form = .init()
    ) -> Self {
        .image(
            .init(
                src: src,
                alt: alt,
                height: height,
                width: width,
                required: required,
                form: form
            )
        )
    }

    public static func month(
        value: Value<String>? = nil,
        list: List? = nil,
        min: Min? = nil,
        max: Max? = nil,
        readonly: Readonly? = nil,
        step: Step? = nil,
        required: Required? = nil
    ) -> Self {
        .month(
            .init(
                value: value,
                list: list,
                min: min,
                max: max,
                readonly: readonly,
                step: step,
                required: required
            )
        )
    }

    public static func number(
        value: Value<String>? = nil,
        min: Min? = nil,
        max: Max? = nil,
        placeholder: Placeholder? = nil,
        readonly: Readonly? = nil,
        required: Required? = nil,
        step: Step? = nil
    ) -> Self {
        .number(
            .init(
                value: value,
                min: min,
                max: max,
                placeholder: placeholder,
                readonly: readonly,
                required: required,
                step: step
            )
        )
    }

    public static func password(
        value: Value<String>? = nil,
        maxlength: Maxlength? = nil,
        minlength: Minlength? = nil,
        pattern: Pattern? = nil,
        placeholder: Placeholder? = nil,
        readonly: Readonly? = nil,
        size: Size? = nil,
        autocomplete: Autocomplete? = nil,
        required: Required? = nil
    ) -> Self {
        .password(
            .init(
                value: value,
                maxlength: maxlength,
                minlength: minlength,
                pattern: pattern,
                placeholder: placeholder,
                readonly: readonly,
                size: size,
                autocomplete: autocomplete,
                required: required
            )
        )
    }

    public static func radio(
        value: Value<String>? = nil,
        checked: Checked? = nil,
        required: Required? = nil
    ) -> Self {
        .radio(
            .init(
                value: value,
                checked: checked,
                required: required
            )
        )
    }

    public static func range(
        value: Value<String>? = nil,
        min: Min? = nil,
        max: Max? = nil,
        step: Step? = nil,
        list: List? = nil
    ) -> Self {
        .range(
            .init(
                value: value,
                min: min,
                max: max,
                step: step,
                list: list
            )
        )
    }

    public static func reset(
        value: Value<String>? = nil,
        required: Required? = nil
    ) -> Self {
        .reset(
            .init(
                value: value,
                required: required
            )
        )
    }

    public static func search(
        value: Value<String>? = nil,
        list: List? = nil,
        maxlength: Maxlength? = nil,
        minlength: Minlength? = nil,
        pattern: Pattern? = nil,
        placeholder: Placeholder? = nil,
        readonly: Readonly? = nil,
        size: Size? = nil,
        spellcheck: Spellcheck? = nil,
        required: Required? = nil
    ) -> Self {
        .search(
            .init(
                value: value,
                list: list,
                maxlength: maxlength,
                minlength: minlength,
                pattern: pattern,
                placeholder: placeholder,
                readonly: readonly,
                size: size,
                spellcheck: spellcheck,
                required: required
            )
        )
    }

    public static func submit(
        value: Value<String>? = nil,
        formaction: FormAction? = nil,
        formenctype: FormEncType? = nil,
        formmethod: FormMethod? = nil,
        formnovalidate: FormNovalidate? = nil,
        formtarget: FormTarget? = nil,
        required: Required? = nil
    ) -> Self {
        .submit(
            .init(
                value: value,
                formaction: formaction,
                formenctype: formenctype,
                formmethod: formmethod,
                formnovalidate: formnovalidate,
                formtarget: formtarget,
                required: required
            )
        )
    }

    public static func tel(
        value: Value<String>? = nil,
        list: List? = nil,
        maxlength: Maxlength? = nil,
        minlength: Minlength? = nil,
        pattern: Pattern? = nil,
        placeholder: Placeholder? = nil,
        readonly: Readonly? = nil,
        size: Size? = nil,
        required: Required? = nil
    ) -> Self {
        .tel(
            .init(
                value: value,
                list: list,
                maxlength: maxlength,
                minlength: minlength,
                pattern: pattern,
                placeholder: placeholder,
                readonly: readonly,
                size: size,
                required: required
            )
        )
    }

    public static func text(
        value: Value<String>? = nil,
        list: List? = nil,
        maxlength: Maxlength? = nil,
        minlength: Minlength? = nil,
        pattern: Pattern? = nil,
        placeholder: Placeholder? = nil,
        readonly: Readonly? = nil,
        size: Size? = nil,
        spellcheck: Spellcheck? = nil,
        required: Required? = nil
    ) -> Self {
        .text(
            .init(
                value: value,
                list: list,
                maxlength: maxlength,
                minlength: minlength,
                pattern: pattern,
                placeholder: placeholder,
                readonly: readonly,
                size: size,
                spellcheck: spellcheck,
                required: required
            )
        )
    }

    public static func time(
        value: Value<String>? = nil,
        list: List? = nil,
        min: Min? = nil,
        max: Max? = nil,
        readonly: Readonly? = nil,
        step: Step? = nil,
        required: Required? = nil
    ) -> Self {
        .time(
            .init(
                value: value,
                list: list,
                min: min,
                max: max,
                readonly: readonly,
                step: step,
                required: required
            )
        )
    }

    public static func url(
        value: Value<String>? = nil,
        list: List? = nil,
        maxlength: Maxlength? = nil,
        minlength: Minlength? = nil,
        pattern: Pattern? = nil,
        placeholder: Placeholder? = nil,
        readonly: Readonly? = nil,
        size: Size? = nil,
        spellcheck: Spellcheck? = nil,
        required: Required? = nil
    ) -> Self {
        .url(
            .init(
                value: value,
                list: list,
                maxlength: maxlength,
                minlength: minlength,
                pattern: pattern,
                placeholder: placeholder,
                readonly: readonly,
                size: size,
                spellcheck: spellcheck,
                required: required
            )
        )
    }

    public static func week(
        value: Value<String>? = nil,
        list: List? = nil,
        min: Min? = nil,
        max: Max? = nil,
        readonly: Readonly? = nil,
        step: Step? = nil,
        required: Required? = nil
    ) -> Self {
        .week(
            .init(
                value: value,
                list: list,
                min: min,
                max: max,
                readonly: readonly,
                step: step,
                required: required
            )
        )
    }
}
