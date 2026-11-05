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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", .exact("13.7.0"))
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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-APPLOVIN/releases/download/13.7.0/AMRAdapterApplovin.xcframework.zip",
            checksum: "bd56daa34d2af2b794678d4247f27c2663169882eba40b8635dee93fde0456bc"
        )
    ]
)
