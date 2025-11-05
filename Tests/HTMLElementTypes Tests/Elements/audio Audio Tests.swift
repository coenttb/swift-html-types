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
import HTMLElementTypes
import Testing

@Suite("Audio Tests")
struct AudioTests {

    @Test("Basic audio creation")
    func basicAudioCreation() {
        let audio = Audio()
        #expect(Audio.tag == "audio")
        #expect(audio.src == nil)
        #expect(audio.controls == nil)
        #expect(audio.autoplay == nil)
        #expect(audio.loop == nil)
        #expect(audio.muted == nil)
        #expect(audio.preload == nil)
        #expect(audio.crossorigin == nil)
        #expect(audio.controlslist == nil)
        #expect(audio.disableremoteplayback == nil)
    }

    @Test("Audio conforms to HTMLElement")
    func audioConformsToHTMLElement() {
        let audio = Audio()
        let element: any HTMLElement = audio
        #expect(type(of: element).tag == "audio")
    }

    @Test("Audio with src attribute")
    func audioWithSrc() {
        let src = Src("audio-file.mp3")
        let audio = Audio(src: src)
        #expect(audio.src == src)
    }

    @Test("Audio with controls")
    func audioWithControls() {
        let controls = Controls()
        let audio = Audio(controls: controls)
        #expect(audio.controls == controls)
    }

    @Test("Audio with autoplay")
    func audioWithAutoplay() {
        let autoplay = Autoplay()
        let audio = Audio(autoplay: autoplay)
        #expect(audio.autoplay == autoplay)
    }

    @Test("Audio with loop")
    func audioWithLoop() {
        let loop = Loop()
        let audio = Audio(loop: loop)
        #expect(audio.loop == loop)
    }

    @Test("Audio with muted")
    func audioWithMuted() {
        let muted = Muted()
        let audio = Audio(muted: muted)
        #expect(audio.muted == muted)
    }

    @Test("Audio with crossorigin")
    func audioWithCrossorigin() {
        let crossorigin = Crossorigin.anonymous
        let audio = Audio(crossorigin: crossorigin)
        #expect(audio.crossorigin == crossorigin)
    }

    @Test("Audio with disable remote playback")
    func audioWithDisableRemotePlayback() {
        let disableremoteplayback = DisableRemotePlayback()
        let audio = Audio(disableremoteplayback: disableremoteplayback)
        #expect(audio.disableremoteplayback == disableremoteplayback)
    }

    @Test("Complete audio configuration")
    func completeAudioConfiguration() {
        let src = Src("audio-file.mp3")
        let controls = Controls()
        let autoplay = Autoplay()
        let loop = Loop()
        let muted = Muted()
        let preload = Audio.Preload.metadata
        let crossorigin = Crossorigin.useCredentials
        let controlslist: Audio.ControlsList = .init(nodownload: true, noremoteplayback: true)
        let disableremoteplayback = DisableRemotePlayback()

        let audio = Audio(
            src: src,
            controls: controls,
            autoplay: autoplay,
            loop: loop,
            muted: muted,
            preload: preload,
            crossorigin: crossorigin,
            controlslist: controlslist,
            disableremoteplayback: disableremoteplayback
        )

        #expect(audio.src == src)
        #expect(audio.controls == controls)
        #expect(audio.autoplay == autoplay)
        #expect(audio.loop == loop)
        #expect(audio.muted == muted)
        #expect(audio.preload == preload)
        #expect(audio.crossorigin == crossorigin)
        #expect(audio.controlslist == controlslist)
        #expect(audio.disableremoteplayback == disableremoteplayback)
    }

    @Suite("Preload Options")
    struct PreloadOptions {

        @Test("Preload none")
        func preloadNone() {
            let preload = Audio.Preload.none
            let audio = Audio(preload: preload)
            #expect(audio.preload == preload)
            #expect(preload.rawValue == "none")
        }

        @Test("Preload metadata")
        func preloadMetadata() {
            let preload = Audio.Preload.metadata
            let audio = Audio(preload: preload)
            #expect(audio.preload == preload)
            #expect(preload.rawValue == "metadata")
        }

        @Test("Preload auto")
        func preloadAuto() {
            let preload = Audio.Preload.auto
            let audio = Audio(preload: preload)
            #expect(audio.preload == preload)
            #expect(preload.rawValue == "auto")
        }
    }

    @Suite("Controls List")
    struct ControlsListTests {

        @Test("Default controls list")
        func defaultControlsList() {
            let controlslist = Audio.ControlsList()
            #expect(controlslist.nodownload == false)
            #expect(controlslist.nofullscreen == false)
            #expect(controlslist.noremoteplayback == false)
            #expect(controlslist.description == "")
        }

        @Test("Controls list with nodownload")
        func controlsListWithNodownload() {
            let controlslist = Audio.ControlsList(nodownload: true)
            #expect(controlslist.nodownload == true)
            #expect(controlslist.description == "nodownload")
        }

        @Test("Controls list with nofullscreen")
        func controlsListWithNofullscreen() {
            let controlslist = Audio.ControlsList(nofullscreen: true)
            #expect(controlslist.nofullscreen == true)
            #expect(controlslist.description == "nofullscreen")
        }

        @Test("Controls list with noremoteplayback")
        func controlsListWithNoremoteplayback() {
            let controlslist = Audio.ControlsList(noremoteplayback: true)
            #expect(controlslist.noremoteplayback == true)
            #expect(controlslist.description == "noremoteplayback")
        }

        @Test("Controls list with multiple options")
        func controlsListWithMultipleOptions() {
            let controlslist = Audio.ControlsList(
                nodownload: true,
                nofullscreen: true,
                noremoteplayback: true
            )
            #expect(controlslist.nodownload == true)
            #expect(controlslist.nofullscreen == true)
            #expect(controlslist.noremoteplayback == true)
            #expect(controlslist.description == "nodownload nofullscreen noremoteplayback")
        }

        @Test("Controls list is hashable")
        func controlsListIsHashable() {
            let controlslist1 = Audio.ControlsList(nodownload: true)
            let controlslist2 = Audio.ControlsList(nodownload: true)
            let controlslist3 = Audio.ControlsList(nofullscreen: true)

            #expect(controlslist1 == controlslist2)
            #expect(controlslist1 != controlslist3)

            let set: Set<Audio.ControlsList> = [controlslist1, controlslist2, controlslist3]
            #expect(set.count == 2)
        }
    }

    @Suite("Common Use Cases")
    struct CommonUseCases {

        @Test("Simple audio with controls")
        func simpleAudioWithControls() {
            let src = Src("podcast.mp3")
            let controls = Controls()
            let audio = Audio(src: src, controls: controls)

            #expect(audio.src == src)
            #expect(audio.controls == controls)
        }

        @Test("Background music with autoplay and loop")
        func backgroundMusicWithAutoplayAndLoop() {
            let src = Src("background-music.mp3")
            let autoplay = Autoplay()
            let loop = Loop()
            let muted = Muted()

            let audio = Audio(
                src: src,
                autoplay: autoplay,
                loop: loop,
                muted: muted
            )

            #expect(audio.src == src)
            #expect(audio.autoplay == autoplay)
            #expect(audio.loop == loop)
            #expect(audio.muted == muted)
        }

        @Test("Podcast player")
        func podcastPlayer() {
            let src = Src("episode-001.mp3")
            let controls = Controls()
            let preload = Audio.Preload.metadata

            let audio = Audio(
                src: src,
                controls: controls,
                preload: preload
            )

            #expect(audio.src == src)
            #expect(audio.controls == controls)
            #expect(audio.preload == preload)
        }

        @Test("Audio with multiple sources (no src attribute)")
        func audioWithMultipleSources() {
            let controls = Controls()
            let preload = Audio.Preload.none

            let audio = Audio(
                controls: controls,
                preload: preload
            )

            #expect(audio.src == nil)
            #expect(audio.controls == controls)
            #expect(audio.preload == preload)
        }

        @Test("Audio with CORS enabled")
        func audioWithCORSEnabled() {
            let src = Src("https://example.com/audio.mp3")
            let controls = Controls()
            let crossorigin = Crossorigin.anonymous

            let audio = Audio(
                src: src,
                controls: controls,
                crossorigin: crossorigin
            )

            #expect(audio.src == src)
            #expect(audio.controls == controls)
            #expect(audio.crossorigin == crossorigin)
        }

        @Test("Audio with restricted controls")
        func audioWithRestrictedControls() {
            let src = Src("restricted-audio.mp3")
            let controls = Controls()
            let controlslist = Audio.ControlsList(
                nodownload: true,
                noremoteplayback: true
            )

            let audio = Audio(
                src: src,
                controls: controls,
                controlslist: controlslist
            )

            #expect(audio.src == src)
            #expect(audio.controls == controls)
            #expect(audio.controlslist == controlslist)
        }
    }

    @Suite("Accessibility and User Experience")
    struct AccessibilityAndUserExperience {

        @Test("Audio with considerate autoplay")
        func audioWithConsiderateAutoplay() {
            let src = Src("notification.mp3")
            let autoplay = Autoplay()
            let muted = Muted()
            let preload = Audio.Preload.auto

            let audio = Audio(
                src: src,
                autoplay: autoplay,
                muted: muted,
                preload: preload
            )

            #expect(audio.autoplay == autoplay)
            #expect(audio.muted == muted)
        }

        @Test("Audio with user-friendly preloading")
        func audioWithUserFriendlyPreloading() {
            let src = Src("large-audio.mp3")
            let controls = Controls()
            let preload = Audio.Preload.metadata

            let audio = Audio(
                src: src,
                controls: controls,
                preload: preload
            )

            #expect(audio.preload == preload)
        }

        @Test("Audio without autoplay for better UX")
        func audioWithoutAutoplayForBetterUX() {
            let src = Src("music.mp3")
            let controls = Controls()

            let audio = Audio(src: src, controls: controls)

            #expect(audio.autoplay == nil)
            #expect(audio.controls == controls)
        }
    }

    @Suite("Integration Tests")
    struct IntegrationTests {

        @Test("Multiple audio elements")
        func multipleAudioElements() {
            let audio1 = Audio(src: Src("track1.mp3"), controls: Controls())
            let audio2 = Audio(src: Src("track2.mp3"), controls: Controls())
            let audio3 = Audio(src: Src("track3.mp3"), controls: Controls())

            let audioElements = [audio1, audio2, audio3]

            #expect(audioElements.count == 3)
            audioElements.forEach { audio in
                #expect(audio is any HTMLElement)
                #expect(type(of: audio).tag == "audio")
                #expect(audio.controls != nil)
            }
        }

        @Test("Audio playlist simulation")
        func audioPlaylistSimulation() {
            let playlist = [
                Audio(src: Src("song1.mp3"), controls: Controls(), preload: Audio.Preload.metadata),
                Audio(src: Src("song2.mp3"), controls: Controls(), preload: Audio.Preload.metadata),
                Audio(src: Src("song3.mp3"), controls: Controls(), preload: Audio.Preload.metadata),
            ]

            #expect(playlist.count == 3)
            playlist.forEach { audio in
                #expect(audio.preload == Audio.Preload.metadata)
                #expect(audio.controls != nil)
            }
        }

        @Test("Audio as HTMLElement")
        func audioAsHTMLElement() {
            let audio = Audio(src: Src("test.mp3"))
            let element: any HTMLElement = audio

            #expect(type(of: element).tag == "audio")
        }
    }

    @Suite("Performance and Optimization")
    struct PerformanceAndOptimization {

        @Test("Audio with no preload for bandwidth conservation")
        func audioWithNoPreloadForBandwidthConservation() {
            let src = Src("large-file.mp3")
            let controls = Controls()
            let preload = Audio.Preload.none

            let audio = Audio(
                src: src,
                controls: controls,
                preload: preload
            )

            #expect(audio.preload == preload)
        }

        @Test("Audio with metadata preload for quick info")
        func audioWithMetadataPreloadForQuickInfo() {
            let src = Src("podcast.mp3")
            let controls = Controls()
            let preload = Audio.Preload.metadata

            let audio = Audio(
                src: src,
                controls: controls,
                preload: preload
            )

            #expect(audio.preload == preload)
        }

        @Test("Audio with auto preload for immediate playback")
        func audioWithAutoPreloadForImmediatePlayback() {
            let src = Src("short-clip.mp3")
            let controls = Controls()
            let preload = Audio.Preload.auto

            let audio = Audio(
                src: src,
                controls: controls,
                preload: preload
            )

            #expect(audio.preload == preload)
        }
    }
}
