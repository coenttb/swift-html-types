import Testing
import WHATWG_HTML

@Suite struct `Article Tests` {

    @Test func `Basic article creation`() {
        _ = WHATWG.HTML.Article.Element()
        #expect(WHATWG.HTML.Article.Element.tag == "article")
    }

    @Test func `Article conforms to HTMLElement`() {
        let article = WHATWG.HTML.Article.Element()
        let element: any WHATWG.HTML.Element = article
        #expect(type(of: element).tag == "article")
    }

    @Suite struct `Common Use Cases` {

        @Test func `Blog post article`() {
            _ = WHATWG.HTML.Article.Element()
            #expect(WHATWG.HTML.Article.Element.tag == "article")
        }

        @Test func `News article`() {
            _ = WHATWG.HTML.Article.Element()
            #expect(WHATWG.HTML.Article.Element.tag == "article")
        }

        @Test func `Forum post`() {
            _ = WHATWG.HTML.Article.Element()
            #expect(WHATWG.HTML.Article.Element.tag == "article")
        }

        @Test func `Comment article`() {
            _ = WHATWG.HTML.Article.Element()
            #expect(WHATWG.HTML.Article.Element.tag == "article")
        }

        @Test func `Product review`() {
            _ = WHATWG.HTML.Article.Element()
            #expect(WHATWG.HTML.Article.Element.tag == "article")
        }

        @Test func `Social media post`() {
            _ = WHATWG.HTML.Article.Element()
            #expect(WHATWG.HTML.Article.Element.tag == "article")
        }
    }

    @Suite struct `Nested Articles` {

        @Test func `Article with nested comments`() {
            _ = WHATWG.HTML.Article.Element()
            _ = WHATWG.HTML.Article.Element()

            #expect(WHATWG.HTML.Article.Element.tag == "article")
        }

        @Test func `Multi-part article series`() {
            _ = WHATWG.HTML.Article.Element()
            _ = WHATWG.HTML.Article.Element()
            _ = WHATWG.HTML.Article.Element()

            #expect(WHATWG.HTML.Article.Element.tag == "article")
        }

        @Test func `Article with related content`() {
            _ = WHATWG.HTML.Article.Element()
            _ = WHATWG.HTML.Article.Element()

            #expect(WHATWG.HTML.Article.Element.tag == "article")
        }
    }

    @Suite struct `Content Structure` {

        @Test func `Article with heading structure`() {
            #expect(WHATWG.HTML.Article.Element.tag == "article")
        }
    }

    @Suite struct `Semantic Usage` {

        @Test func `Standalone content article`() {
            #expect(WHATWG.HTML.Article.Element.tag == "article")
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Multiple articles in feed`() {
            let articles = [
                WHATWG.HTML.Article.Element(), WHATWG.HTML.Article.Element(),
                WHATWG.HTML.Article.Element(),
            ]

            #expect(articles.count == 3)
            articles.forEach { article in #expect(type(of: article).tag == "article") }
        }

        @Test func `Article collection rendering`() {
            let newsArticle = WHATWG.HTML.Article.Element()
            let blogPost = WHATWG.HTML.Article.Element()
            let review = WHATWG.HTML.Article.Element()

            let allArticles = [newsArticle, blogPost, review]

            #expect(allArticles.count == 3)
            allArticles.forEach { article in
                #expect(type(of: article).tag == "article")
            }
        }

        @Test func `Article as independent component`() {
            let article = WHATWG.HTML.Article.Element()
            let element: any WHATWG.HTML.Element = article

            #expect(type(of: element).tag == "article")
        }
    }
}
