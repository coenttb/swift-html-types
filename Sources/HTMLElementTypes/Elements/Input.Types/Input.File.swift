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

/// `<input type="file">` elements let the user choose one or more files from their device storage.
/// Once chosen, the files can be uploaded to a server using form submission, or manipulated
/// using JavaScript code and the File API.
extension HTMLElementTypes.Input {
    public struct File: Sendable, Hashable {
        /// The accept attribute value is a string that defines the file types the file input should accept.
        /// This string is a comma-separated list of unique file type specifiers.
        ///
        /// For example:
        /// - "image/png" or ".png" — Accepts PNG files.
        /// - "image/png, image/jpeg" or ".png, .jpg, .jpeg" — Accept PNG or JPEG files.
        /// - "image/*" — Accept any file with an image/* MIME type.
        /// - ".doc,.docx,.xml,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document" — accept anything that is an MS Word document.
        public var accept: Accept?

        /// The capture attribute value is a string that specifies which camera to use for capture of
        /// image or video data, if the accept attribute indicates that the input should be of one of those types.
        ///
        /// - "user" indicates that the user-facing camera and/or microphone should be used.
        /// - "environment" specifies that the outward-facing camera and/or microphone should be used.
        public var capture: Capture?

        /// When the multiple Boolean attribute is specified, the file input allows the user to select
        /// more than one file.
        public var multiple: Multiple?

        public var required: Required?

        /// Creates a new file input configuration
        public init(
            accept: Accept? = nil,
            capture: Capture? = nil,
            multiple: Multiple? = nil,
            required: Required? = nil
        ) {
            self.accept = accept
            self.capture = capture
            self.multiple = multiple
            self.required = required
        }
    }
}

extension HTMLElementTypes.Input {
    /// Creates a new file input element
    public static let file: Self = .file()

    /// Creates a new file input element
    public static func file(
        name: Name? = nil,
        accept: Accept? = nil,
        capture: Capture? = nil,
        multiple: Multiple? = nil,
        disabled: Disabled? = nil,
        required: Required? = nil,
        form: HTMLAttributeTypes.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .file(
                .init(
                    accept: accept,
                    capture: capture,
                    multiple: multiple,
                    required: required
                )
            )
        )
    }
}
