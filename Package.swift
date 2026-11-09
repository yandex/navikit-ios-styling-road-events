// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "YMKStylingRoadEvents",
    defaultLocalization: "en",
    platforms: [.iOS("15.0")],
    products: [
        .library(
            name: "YMKStylingRoadEvents",
            type: .static,
            targets: [
                "YMKStylingRoadEvents",
                "YMKStylingRoadEventsResources"
            ]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/yandex/navikit-ios", exact: "4.47.0"),
    ],
    targets: [
        .binaryTarget(
            name: "YMKStylingRoadEvents",
            url: "https://maps-ios-pods-public.s3.yandex.net/YMKStylingRoadEvents-4.47.0.framework.zip",
            checksum: "2ad562a3dc046c1635eb9f758206c46e511d4448e5d136970175e2aa4d5486cc"
        ),
        .target(
            name: "YMKStylingRoadEventsResources",
            dependencies: [
                .product(name: "YandexMapsMobileNavikit", package: "navikit-ios"),
            ],
            path: "Resources",
            resources: [.copy("Contents.bundle")]
        )
    ]
)
