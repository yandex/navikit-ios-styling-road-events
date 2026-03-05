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
        .package(url: "https://github.com/yandex/navikit-ios", exact: "4.32.0"),
    ],
    targets: [
        .binaryTarget(
            name: "YMKStylingRoadEvents",
            url: "https://maps-ios-pods-public.s3.yandex.net/YMKStylingRoadEvents-4.32.0.framework.zip",
            checksum: "62c55fb664c8d7f1510d9ce43cacae47342d9addf56aca30639ce84810bb3dab"
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
