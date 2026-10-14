import Testing
import WHATWG_HTML

@Suite struct `Audio Tests` {

    @Test func `Basic audio creation`() {
        let audio = WHATWG.HTML.Audio.Element()
        #expect(WHATWG.HTML.Audio.Element.tag == "audio")
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

    @Test func `Audio conforms to HTMLElement`() {
        let audio = WHATWG.HTML.Audio.Element()
        let element: any WHATWG.HTML.Element = audio
        #expect(type(of: element).tag == "audio")
    }

    @Test func `Audio with src attribute`() {
        let src = WHATWG.HTML.Src.Attribute("audio-file.mp3")
        let audio = WHATWG.HTML.Audio.Element(src: src)
        #expect(audio.src == src)
    }

    @Test func `Audio with controls`() {
        let controls = WHATWG.HTML.Controls.Attribute()
        let audio = WHATWG.HTML.Audio.Element(controls: controls)
        #expect(audio.controls == controls)
    }

    @Test func `Audio with autoplay`() {
        let autoplay = WHATWG.HTML.Autoplay.Attribute()
        let audio = WHATWG.HTML.Audio.Element(autoplay: autoplay)
        #expect(audio.autoplay == autoplay)
    }

    @Test func `Audio with loop`() {
        let loop = WHATWG.HTML.Loop.Attribute()
        let audio = WHATWG.HTML.Audio.Element(loop: loop)
        #expect(audio.loop == loop)
    }

    @Test func `Audio with muted`() {
        let muted = WHATWG.HTML.Muted.Attribute()
        let audio = WHATWG.HTML.Audio.Element(muted: muted)
        #expect(audio.muted == muted)
    }

    @Test func `Audio with crossorigin`() {
        let crossorigin = WHATWG.HTML.Crossorigin.Attribute.anonymous
        let audio = WHATWG.HTML.Audio.Element(crossorigin: crossorigin)
        #expect(audio.crossorigin == crossorigin)
    }

    @Test func `Audio with disable remote playback`() {
        let disableremoteplayback = WHATWG.HTML.DisableRemotePlayback.Attribute()
        let audio = WHATWG.HTML.Audio.Element(disableremoteplayback: disableremoteplayback)
        #expect(audio.disableremoteplayback == disableremoteplayback)
    }

    @Test func `Complete audio configuration`() {
        let src = WHATWG.HTML.Src.Attribute("audio-file.mp3")
        let controls = WHATWG.HTML.Controls.Attribute()
        let autoplay = WHATWG.HTML.Autoplay.Attribute()
        let loop = WHATWG.HTML.Loop.Attribute()
        let muted = WHATWG.HTML.Muted.Attribute()
        let preload = WHATWG.HTML.Preload.Attribute.metadata
        let crossorigin = WHATWG.HTML.Crossorigin.Attribute.useCredentials
        let controlslist: WHATWG.HTML.ControlsList.Attribute = [
            .nodownload, .noremoteplayback,
        ]
        let disableremoteplayback = WHATWG.HTML.DisableRemotePlayback.Attribute()

        let audio = WHATWG.HTML.Audio.Element(
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

    @Suite struct `Preload Options` {

        @Test func `Preload none`() {
            let preload = WHATWG.HTML.Preload.Attribute.none
            let audio = WHATWG.HTML.Audio.Element(preload: preload)
            #expect(audio.preload == preload)
            #expect(preload.rawValue == "none")
        }

        @Test func `Preload metadata`() {
            let preload = WHATWG.HTML.Preload.Attribute.metadata
            let audio = WHATWG.HTML.Audio.Element(preload: preload)
            #expect(audio.preload == preload)
            #expect(preload.rawValue == "metadata")
        }

        @Test func `Preload auto`() {
            let preload = WHATWG.HTML.Preload.Attribute.auto
            let audio = WHATWG.HTML.Audio.Element(preload: preload)
            #expect(audio.preload == preload)
            #expect(preload.rawValue == "auto")
        }
    }

    @Suite struct `Controls List` {

        @Test func `Default controls list`() {
            let controlslist = WHATWG.HTML.ControlsList.Attribute(value: "")
            #expect(controlslist.description.isEmpty)
        }

        @Test func `Controls list with nodownload`() {
            let controlslist = WHATWG.HTML.ControlsList.Attribute.nodownload
            #expect(controlslist.description == "nodownload")
        }

        @Test func `Controls list with nofullscreen`() {
            let controlslist = WHATWG.HTML.ControlsList.Attribute.nofullscreen
            #expect(controlslist.description == "nofullscreen")
        }

        @Test func `Controls list with noremoteplayback`() {
            let controlslist = WHATWG.HTML.ControlsList.Attribute.noremoteplayback
            #expect(controlslist.description == "noremoteplayback")
        }

        @Test func `Controls list with multiple options`() {
            let controlslist: WHATWG.HTML.ControlsList.Attribute = [
                .nodownload, .nofullscreen, .noremoteplayback,
            ]
            #expect(controlslist.description == "nodownload nofullscreen noremoteplayback")
        }

        @Test func `Controls list is hashable`() {
            let controlslist1 = WHATWG.HTML.ControlsList.Attribute.nodownload
            let controlslist2 = WHATWG.HTML.ControlsList.Attribute.nodownload
            let controlslist3 = WHATWG.HTML.ControlsList.Attribute.nofullscreen

            #expect(controlslist1 == controlslist2)
            #expect(controlslist1 != controlslist3)

            let set: Set<WHATWG.HTML.ControlsList.Attribute> = [
                controlslist1, controlslist2, controlslist3,
            ]
            #expect(set.count == 2)
        }
    }

    @Suite struct `Common Use Cases` {

        @Test func `Simple audio with controls`() {
            let src = WHATWG.HTML.Src.Attribute("podcast.mp3")
            let controls = WHATWG.HTML.Controls.Attribute()
            let audio = WHATWG.HTML.Audio.Element(src: src, controls: controls)

            #expect(audio.src == src)
            #expect(audio.controls == controls)
        }

        @Test func `Background music with autoplay and loop`() {
            let src = WHATWG.HTML.Src.Attribute("background-music.mp3")
            let autoplay = WHATWG.HTML.Autoplay.Attribute()
            let loop = WHATWG.HTML.Loop.Attribute()
            let muted = WHATWG.HTML.Muted.Attribute()

            let audio = WHATWG.HTML.Audio.Element(
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

        @Test func `Podcast player`() {
            let src = WHATWG.HTML.Src.Attribute("episode-001.mp3")
            let controls = WHATWG.HTML.Controls.Attribute()
            let preload = WHATWG.HTML.Preload.Attribute.metadata

            let audio = WHATWG.HTML.Audio.Element(src: src, controls: controls, preload: preload)

            #expect(audio.src == src)
            #expect(audio.controls == controls)
            #expect(audio.preload == preload)
        }

        @Test func `Audio with multiple sources (no src attribute)`() {
            let controls = WHATWG.HTML.Controls.Attribute()
            let preload = WHATWG.HTML.Preload.Attribute.none

            let audio = WHATWG.HTML.Audio.Element(controls: controls, preload: preload)

            #expect(audio.src == nil)
            #expect(audio.controls == controls)
            #expect(audio.preload == preload)
        }

        @Test func `Audio with CORS enabled`() {
            let src = WHATWG.HTML.Src.Attribute("https://example.com/audio.mp3")
            let controls = WHATWG.HTML.Controls.Attribute()
            let crossorigin = WHATWG.HTML.Crossorigin.Attribute.anonymous

            let audio = WHATWG.HTML.Audio.Element(
                src: src,
                controls: controls,
                crossorigin: crossorigin
            )

            #expect(audio.src == src)
            #expect(audio.controls == controls)
            #expect(audio.crossorigin == crossorigin)
        }

        @Test func `Audio with restricted controls`() {
            let src = WHATWG.HTML.Src.Attribute("restricted-audio.mp3")
            let controls = WHATWG.HTML.Controls.Attribute()
            let controlslist: WHATWG.HTML.ControlsList.Attribute = [
                .nodownload, .noremoteplayback,
            ]

            let audio = WHATWG.HTML.Audio.Element(
                src: src,
                controls: controls,
                controlslist: controlslist
            )

            #expect(audio.src == src)
            #expect(audio.controls == controls)
            #expect(audio.controlslist == controlslist)
        }
    }

    @Suite struct `Accessibility and User Experience` {

        @Test func `Audio with considerate autoplay`() {
            let src = WHATWG.HTML.Src.Attribute("notification.mp3")
            let autoplay = WHATWG.HTML.Autoplay.Attribute()
            let muted = WHATWG.HTML.Muted.Attribute()
            let preload = WHATWG.HTML.Preload.Attribute.auto

            let audio = WHATWG.HTML.Audio.Element(
                src: src,
                autoplay: autoplay,
                muted: muted,
                preload: preload
            )

            #expect(audio.autoplay == autoplay)
            #expect(audio.muted == muted)
        }

        @Test func `Audio with user-friendly preloading`() {
            let src = WHATWG.HTML.Src.Attribute("large-audio.mp3")
            let controls = WHATWG.HTML.Controls.Attribute()
            let preload = WHATWG.HTML.Preload.Attribute.metadata

            let audio = WHATWG.HTML.Audio.Element(src: src, controls: controls, preload: preload)

            #expect(audio.preload == preload)
        }

        @Test func `Audio without autoplay for better UX`() {
            let src = WHATWG.HTML.Src.Attribute("music.mp3")
            let controls = WHATWG.HTML.Controls.Attribute()

            let audio = WHATWG.HTML.Audio.Element(src: src, controls: controls)

            #expect(audio.autoplay == nil)
            #expect(audio.controls == controls)
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Multiple audio elements`() {
            let audio1 = WHATWG.HTML.Audio.Element(
                src: WHATWG.HTML.Src.Attribute("track1.mp3"),
                controls: WHATWG.HTML.Controls.Attribute()
            )
            let audio2 = WHATWG.HTML.Audio.Element(
                src: WHATWG.HTML.Src.Attribute("track2.mp3"),
                controls: WHATWG.HTML.Controls.Attribute()
            )
            let audio3 = WHATWG.HTML.Audio.Element(
                src: WHATWG.HTML.Src.Attribute("track3.mp3"),
                controls: WHATWG.HTML.Controls.Attribute()
            )

            let audioElements = [audio1, audio2, audio3]

            #expect(audioElements.count == 3)
            audioElements.forEach { audio in
                #expect(type(of: audio).tag == "audio")
                #expect(audio.controls != nil)
            }
        }

        @Test func `Audio playlist simulation`() {
            let playlist = [
                WHATWG.HTML.Audio.Element(
                    src: WHATWG.HTML.Src.Attribute("song1.mp3"),
                    controls: WHATWG.HTML.Controls.Attribute(),
                    preload: WHATWG.HTML.Preload.Attribute.metadata
                ),
                WHATWG.HTML.Audio.Element(
                    src: WHATWG.HTML.Src.Attribute("song2.mp3"),
                    controls: WHATWG.HTML.Controls.Attribute(),
                    preload: WHATWG.HTML.Preload.Attribute.metadata
                ),
                WHATWG.HTML.Audio.Element(
                    src: WHATWG.HTML.Src.Attribute("song3.mp3"),
                    controls: WHATWG.HTML.Controls.Attribute(),
                    preload: WHATWG.HTML.Preload.Attribute.metadata
                ),
            ]

            #expect(playlist.count == 3)
            playlist.forEach { audio in
                #expect(audio.preload == WHATWG.HTML.Preload.Attribute.metadata)
                #expect(audio.controls != nil)
            }
        }

        @Test func `Audio as HTMLElement`() {
            let audio = WHATWG.HTML.Audio.Element(src: WHATWG.HTML.Src.Attribute("test.mp3"))
            let element: any WHATWG.HTML.Element = audio

            #expect(type(of: element).tag == "audio")
        }
    }

    @Suite struct `Performance and Optimization` {

        @Test func `Audio with no preload for bandwidth conservation`() {
            let src = WHATWG.HTML.Src.Attribute("large-file.mp3")
            let controls = WHATWG.HTML.Controls.Attribute()
            let preload = WHATWG.HTML.Preload.Attribute.none

            let audio = WHATWG.HTML.Audio.Element(src: src, controls: controls, preload: preload)

            #expect(audio.preload == preload)
        }

        @Test func `Audio with metadata preload for quick info`() {
            let src = WHATWG.HTML.Src.Attribute("podcast.mp3")
            let controls = WHATWG.HTML.Controls.Attribute()
            let preload = WHATWG.HTML.Preload.Attribute.metadata

            let audio = WHATWG.HTML.Audio.Element(src: src, controls: controls, preload: preload)

            #expect(audio.preload == preload)
        }

        @Test func `Audio with auto preload for immediate playback`() {
            let src = WHATWG.HTML.Src.Attribute("short-clip.mp3")
            let controls = WHATWG.HTML.Controls.Attribute()
            let preload = WHATWG.HTML.Preload.Attribute.auto

            let audio = WHATWG.HTML.Audio.Element(src: src, controls: controls, preload: preload)

            #expect(audio.preload == preload)
        }
    }
}
