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
        .package(url: "https://github.com/yandex/navikit-ios", exact: "4.23.0"),
    ],
    targets: [
        .binaryTarget(
            name: "YMKStylingRoadEvents",
            url: "https://maps-ios-pods-public.s3.yandex.net/YMKStylingRoadEvents-4.23.0.framework.zip",
            checksum: "5918d648bd7b1caba9ee9687757b55159bb5a77cec2cb37295dbedca5b4d4001"
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
