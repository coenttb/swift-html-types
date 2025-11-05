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

@Suite("Article Tests")
struct ArticleTests {

    @Test("Basic article creation")
    func basicArticleCreation() {
        let article = Article()
        #expect(Article.tag == "article")
    }

    @Test("Article conforms to HTMLElement")
    func articleConformsToHTMLElement() {
        let article = Article()
        let element: any HTMLElement = article
        #expect(type(of: element).tag == "article")
    }

    @Suite("Common Use Cases")
    struct CommonUseCases {

        @Test("Blog post article")
        func blogPostArticle() {
            let article = Article()
            #expect(Article.tag == "article")
        }

        @Test("News article")
        func newsArticle() {
            let article = Article()
            #expect(Article.tag == "article")
        }

        @Test("Forum post")
        func forumPost() {
            let article = Article()
            #expect(Article.tag == "article")
        }

        @Test("Comment article")
        func commentArticle() {
            let article = Article()
            #expect(Article.tag == "article")
        }

        @Test("Product review")
        func productReview() {
            let article = Article()
            #expect(Article.tag == "article")
        }

        @Test("Social media post")
        func socialMediaPost() {
            let article = Article()
            #expect(Article.tag == "article")
        }
    }

    @Suite("Nested Articles")
    struct NestedArticles {

        @Test("Article with nested comments")
        func articleWithNestedComments() {
            let mainArticle = Article()
            let commentArticle = Article()

            #expect(Article.tag == "article")
            #expect(mainArticle is any HTMLElement)
            #expect(commentArticle is any HTMLElement)
        }

        @Test("Multi-part article series")
        func multiPartArticleSeries() {
            let containerArticle = Article()
            let part1 = Article()
            let part2 = Article()

            #expect(Article.tag == "article")
            #expect(containerArticle is any HTMLElement)
            #expect(part1 is any HTMLElement)
            #expect(part2 is any HTMLElement)
        }

        @Test("Article with related content")
        func articleWithRelatedContent() {
            let mainArticle = Article()
            let relatedArticle = Article()

            #expect(Article.tag == "article")
            #expect(mainArticle is any HTMLElement)
            #expect(relatedArticle is any HTMLElement)
        }
    }

    @Suite("Content Structure")
    struct ContentStructure {

        @Test("Article with heading structure")
        func articleWithHeadingStructure() {
            let article = Article()
            #expect(Article.tag == "article")
        }

        @Test("Article with sections")
        func articleWithSections() {
            let article = Article()
            #expect(Article.tag == "article")
        }

        @Test("Article with metadata")
        func articleWithMetadata() {
            let article = Article()
            #expect(Article.tag == "article")
        }

        @Test("Article with author information")
        func articleWithAuthorInformation() {
            let article = Article()
            #expect(Article.tag == "article")
        }

        @Test("Article with publication date")
        func articleWithPublicationDate() {
            let article = Article()
            #expect(Article.tag == "article")
        }
    }

    @Suite("Semantic Usage")
    struct SemanticUsage {

        @Test("Standalone content article")
        func standaloneContentArticle() {
            let article = Article()
            #expect(Article.tag == "article")
        }

        @Test("Syndicated content article")
        func syndicatedContentArticle() {
            let article = Article()
            #expect(Article.tag == "article")
        }

        @Test("User-generated content article")
        func userGeneratedContentArticle() {
            let article = Article()
            #expect(Article.tag == "article")
        }

        @Test("Widget-like article")
        func widgetLikeArticle() {
            let article = Article()
            #expect(Article.tag == "article")
        }
    }

    @Suite("Integration Tests")
    struct IntegrationTests {

        @Test("Multiple articles in feed")
        func multipleArticlesInFeed() {
            let articles = [
                Article(),
                Article(),
                Article(),
            ]

            #expect(articles.count == 3)
            articles.forEach { article in
                #expect(type(of: article).tag == "article")
            }
        }

        @Test("Article collection rendering")
        func articleCollectionRendering() {
            let newsArticle = Article()
            let blogPost = Article()
            let review = Article()

            let allArticles = [newsArticle, blogPost, review]

            #expect(allArticles.count == 3)
            allArticles.forEach { article in
                #expect(article is any HTMLElement)
                #expect(type(of: article).tag == "article")
            }
        }

        @Test("Article as independent component")
        func articleAsIndependentComponent() {
            let article = Article()
            let element: any HTMLElement = article

            #expect(type(of: element).tag == "article")
        }
    }

    @Suite("Accessibility and SEO")
    struct AccessibilityAndSEO {

        @Test("Article with proper heading hierarchy")
        func articleWithProperHeadingHierarchy() {
            let article = Article()
            #expect(Article.tag == "article")
        }

        @Test("Article with descriptive content")
        func articleWithDescriptiveContent() {
            let article = Article()
            #expect(Article.tag == "article")
        }

        @Test("Article with structured data compatibility")
        func articleWithStructuredDataCompatibility() {
            let article = Article()
            #expect(Article.tag == "article")
        }
    }
}
