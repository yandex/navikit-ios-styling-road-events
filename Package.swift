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
        .package(url: "https://github.com/yandex/navikit-ios", exact: "4.14.0"),
    ],
    targets: [
        .binaryTarget(
            name: "YMKStylingRoadEvents",
            url: "https://maps-ios-pods-public.s3.yandex.net/YMKStylingRoadEvents-4.14.0.framework.zip",
            checksum: "419d063579f4aca232bba36caf2c36b2686cbc37ff152af64793ae2ff34dc761"
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
