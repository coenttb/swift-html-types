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

@Suite("Image Map Area Tests")
struct ImageMapAreaTests {

    @Test("Basic area creation")
    func basicAreaCreation() {
        let area = Area()
        #expect(Area.tag == "area")
        #expect(area.shape == nil)
        #expect(area.href == nil)
        #expect(area.alt == nil)
    }

    @Test("Area conforms to HTMLElement")
    func areaConformsToHTMLElement() {
        let area = Area()
        let element: any HTMLElement = area
        #expect(type(of: element).tag == "area")
    }

    @Test("Area with rectangular shape")
    func areaWithRectangularShape() {
        let shape = Shape.rect(coords: "0,0,100,100")
        let href = Href("page1.html")
        let alt = Alt("Rectangle area")
        let area = Area(shape: shape, href: href, alt: alt)

        #expect(area.shape == shape)
        #expect(area.href == href)
        #expect(area.alt == alt)
        #expect(area.coords == "0,0,100,100")
    }

    @Test("Area with circular shape")
    func areaWithCircularShape() {
        let shape = Shape.circle(coords: "50,50,30")
        let href = Href("page2.html")
        let alt = Alt("Circle area")
        let area = Area(shape: shape, href: href, alt: alt)

        #expect(area.shape == shape)
        #expect(area.href == href)
        #expect(area.alt == alt)
        #expect(area.coords == "50,50,30")
    }

    @Test("Area with polygon shape")
    func areaWithPolygonShape() {
        let shape = Shape.poly(coords: "0,0,50,0,25,43")
        let href = Href("page3.html")
        let alt = Alt("Triangle area")
        let area = Area(shape: shape, href: href, alt: alt)

        #expect(area.shape == shape)
        #expect(area.href == href)
        #expect(area.alt == alt)
        #expect(area.coords == "0,0,50,0,25,43")
    }

    @Test("Area with default shape")
    func areaWithDefaultShape() {
        let shape = Shape.default
        let href = Href("default.html")
        let alt = Alt("Default area")
        let area = Area(shape: shape, href: href, alt: alt)

        #expect(area.shape == shape)
        #expect(area.href == href)
        #expect(area.alt == alt)
        #expect(area.coords == nil)
    }

    @Test("Area with all attributes")
    func areaWithAllAttributes() {
        let shape = Shape.rect(coords: "10,10,90,90")
        let alt = Alt("Complete area")
        let href = Href("complete.html")
        let download = Download("file.pdf")
        let ping = Ping("https://analytics.example.com/ping")
        let referrerpolicy = ReferrerPolicy.noReferrer
        let rel = Rel("noopener")
        let target = Target.blank

        let area = Area(
            shape: shape,
            alt: alt,
            href: href,
            download: download,
            ping: ping,
            referrerpolicy: referrerpolicy,
            rel: rel,
            target: target
        )

        #expect(area.shape == shape)
        #expect(area.alt == alt)
        #expect(area.href == href)
        #expect(area.download == download)
        #expect(area.ping == ping)
        #expect(area.referrerpolicy == referrerpolicy)
        #expect(area.rel == rel)
        #expect(area.target == target)
    }

    @Suite("Shape Tests")
    struct ShapeTests {

        @Test("Rectangle shape label")
        func rectangleShapeLabel() {
            let shape = Shape.rect(coords: "0,0,100,100")
            #expect(shape.label == "rect")
        }

        @Test("Circle shape label")
        func circleShapeLabel() {
            let shape = Shape.circle(coords: "50,50,25")
            #expect(shape.label == "circle")
        }

        @Test("Polygon shape label")
        func polygonShapeLabel() {
            let shape = Shape.poly(coords: "0,0,50,0,25,43")
            #expect(shape.label == "poly")
        }

        @Test("Default shape label")
        func defaultShapeLabel() {
            let shape = Shape.default
            #expect(shape.label == "default")
        }

        @Test("Shape equality")
        func shapeEquality() {
            let rect1 = Shape.rect(coords: "0,0,100,100")
            let rect2 = Shape.rect(coords: "0,0,100,100")
            let rect3 = Shape.rect(coords: "10,10,90,90")

            #expect(rect1 == rect2)
            #expect(rect1 != rect3)
        }

        @Test("Shape is hashable")
        func shapeIsHashable() {
            let shapes: Set<Shape> = [
                .rect(coords: "0,0,100,100"),
                .circle(coords: "50,50,25"),
                .poly(coords: "0,0,50,0,25,43"),
                .default,
            ]

            #expect(shapes.count == 4)
        }
    }

    @Suite("Convenience Creators")
    struct ConvenienceCreators {

        @Test("Rectangle creator")
        func rectangleCreator() {
            let href = Href("rect.html")
            let alt = Alt("Rectangle link")
            let target = Target.blank

            let area = Area.rectangle(
                x1: 10,
                y1: 20,
                x2: 90,
                y2: 80,
                href: href,
                alt: alt,
                target: target
            )

            #expect(area.coords == "10,20,90,80")
            #expect(area.href == href)
            #expect(area.alt == alt)
            #expect(area.target == target)

            if case .rect(let coords) = area.shape {
                #expect(coords == "10,20,90,80")
            } else {
                #expect(Bool(false), "Expected rect shape")
            }
        }

        @Test("Circle creator")
        func circleCreator() {
            let href = Href("circle.html")
            let alt = Alt("Circle link")

            let area = Area.circle(
                x: 50,
                y: 50,
                radius: 25,
                href: href,
                alt: alt
            )

            #expect(area.coords == "50,50,25")
            #expect(area.href == href)
            #expect(area.alt == alt)

            if case .circle(let coords) = area.shape {
                #expect(coords == "50,50,25")
            } else {
                #expect(Bool(false), "Expected circle shape")
            }
        }

        @Test("Polygon creator")
        func polygonCreator() {
            let href = Href("poly.html")
            let alt = Alt("Polygon link")
            let points = [(0, 0), (50, 0), (25, 43)]

            let area = Area.polygon(
                points: points,
                href: href,
                alt: alt
            )

            #expect(area.coords == "0,0,50,0,25,43")
            #expect(area.href == href)
            #expect(area.alt == alt)

            if case .poly(let coords) = area.shape {
                #expect(coords == "0,0,50,0,25,43")
            } else {
                #expect(Bool(false), "Expected poly shape")
            }
        }

        @Test("Default area creator")
        func defaultAreaCreator() {
            let href = Href("default.html")
            let alt = Alt("Default link")
            let target = Target.`self`

            let area = Area.defaultArea(
                href: href,
                alt: alt,
                target: target
            )

            #expect(area.coords == nil)
            #expect(area.href == href)
            #expect(area.alt == alt)
            #expect(area.target == target)
            #expect(area.shape == .default)
        }
    }

    @Suite("Common Use Cases")
    struct CommonUseCases {

        @Test("Image map navigation")
        func imageMapNavigation() {
            let area1 = Area.rectangle(
                x1: 0,
                y1: 0,
                x2: 100,
                y2: 50,
                href: Href("top.html"),
                alt: Alt("Top section")
            )

            let area2 = Area.rectangle(
                x1: 0,
                y1: 50,
                x2: 100,
                y2: 100,
                href: Href("bottom.html"),
                alt: Alt("Bottom section")
            )

            #expect(area1.coords == "0,0,100,50")
            #expect(area2.coords == "0,50,100,100")
        }

        @Test("Interactive diagram")
        func interactiveDiagram() {
            let buttonArea = Area.circle(
                x: 50,
                y: 30,
                radius: 20,
                href: Href("#button-info"),
                alt: Alt("Button component")
            )

            #expect(buttonArea.coords == "50,30,20")
            #expect(buttonArea.alt?.description == "Button component")
        }

        @Test("Geographic map")
        func geographicMap() {
            let region = Area.polygon(
                points: [(100, 50), (150, 75), (125, 125), (75, 100)],
                href: Href("region-details.html"),
                alt: Alt("Northern region")
            )

            #expect(region.coords == "100,50,150,75,125,125,75,100")
        }
    }

    @Suite("Accessibility Tests")
    struct AccessibilityTests {

        @Test("Alt text is required for links")
        func altTextIsRequiredForLinks() {
            let href = Href("link.html")
            let alt = Alt("Accessible link")
            let area = Area(
                shape: .rect(coords: "0,0,100,100"),
                alt: alt,
                href: href
            )

            #expect(area.alt == alt)
            #expect(area.href == href)
        }

        @Test("Descriptive alt text")
        func descriptiveAltText() {
            let alt = Alt("Navigate to product details page")
            let area = Area(
                shape: .circle(coords: "50,50,25"),
                alt: alt,
                href: Href("product.html")
            )

            #expect(area.alt?.description == "Navigate to product details page")
        }
    }

    @Suite("Integration Tests")
    struct IntegrationTests {

        @Test("Multiple areas in image map")
        func multipleAreasInImageMap() {
            let areas = [
                Area.rectangle(
                    x1: 0,
                    y1: 0,
                    x2: 100,
                    y2: 50,
                    href: Href("top.html"),
                    alt: Alt("Top")
                ),
                Area.circle(
                    x: 50,
                    y: 75,
                    radius: 25,
                    href: Href("center.html"),
                    alt: Alt("Center")
                ),
                Area.defaultArea(href: Href("default.html"), alt: Alt("Default area")),
            ]

            #expect(areas.count == 3)
            #expect(areas[0].coords == "0,0,100,50")
            #expect(areas[1].coords == "50,75,25")
            #expect(areas[2].coords == nil)
        }

        @Test("Area with security attributes")
        func areaWithSecurityAttributes() {
            let area = Area(
                shape: .rect(coords: "0,0,100,100"),
                alt: Alt("External link"),
                href: Href("https://external.com"),
                rel: Rel("noopener noreferrer"),
                target: Target.blank
            )

            #expect(area.rel?.description == "noopener noreferrer")
            #expect(area.target == Target.blank)
        }
    }
}
