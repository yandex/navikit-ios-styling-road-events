// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "YMKStylingRoadEvents",
    defaultLocalization: "en",
    platforms: [.iOS("13.0")],
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
        .package(url: "https://github.com/yandex/navikit-ios", exact: "4.11.0"),
    ],
    targets: [
        .binaryTarget(
            name: "YMKStylingRoadEvents",
            url: "https://maps-ios-pods-public.s3.yandex.net/YMKStylingRoadEvents-4.11.0.framework.zip",
            checksum: "96e98d8893702dced2ce8f840d6634822d823b75f7ecba5424d3818b2eadc0e6"
        ),
        .target(
            name: "YMKStylingRoadEventsResources",
            dependencies: [
                .product(name: "YandexMapsMobileNavikit", package: "navikit-ios"),
            ],
            path: "Resources",
            resources: [.process("Contents")]
        )
    ]
)