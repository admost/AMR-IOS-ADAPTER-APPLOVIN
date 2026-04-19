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
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.84"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", .exact("13.6.1"))
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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-APPLOVIN/releases/download/13.6.2/AMRAdapterApplovin.xcframework.zip",
            checksum: "a7423e4bf884f374b33b8303480835f31ab863ea8c22a1d6be1b6a1fec5be82a"
        )
    ]
)
