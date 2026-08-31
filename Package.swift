// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AMRAdapterApplovin",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AMRAdapterApplovin",
            targets: ["AMRAdapterApplovin"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.6.0-beta.1"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", .exact("13.6.4"))
    ],
    targets: [
        .target(
            name: "AMRAdapterApplovin",
            dependencies: [
                "AMRAdapterApplovinLib",
                .product(name: "AMRSDK", package: "AMR-IOS-SDK"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ],
            path: "AMRAdapterApplovin",
            exclude: ["Libs"],
            linkerSettings: [
                .linkedLibrary("c++")
            ]
        ),
        .binaryTarget(
            name: "AMRAdapterApplovinLib",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-APPLOVIN/releases/download/13.6.4/AMRAdapterApplovin.xcframework.zip",
            checksum: "7bb1509bf1c75c1f0b4679e7f46c50edd60a99cc58834a6f957fbabb489f93ad"
        )
    ]
)
