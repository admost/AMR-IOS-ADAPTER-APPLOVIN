// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AMRAdapterApplovin",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "AMRAdapterApplovin",
            targets: ["AMRAdapterApplovin"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.84"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", .exact("13.6.0"))
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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-APPLOVIN/releases/download/13.6.1/AMRAdapterApplovin.xcframework.zip",
            checksum: "9de8f9f01d41b54bd016f531060ebb4002869988783ef2da737ca19d4762d662"
        )
    ]
)
