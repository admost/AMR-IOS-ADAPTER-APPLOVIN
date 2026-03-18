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
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.83"),
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
                .linkedLibrary("c++"),
                .unsafeFlags(["-ObjC"])
            ]
        ),
        .binaryTarget(
            name: "AMRAdapterApplovinLib",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-APPLOVIN/releases/download/13.6.0/AMRAdapterApplovin.xcframework.zip",
            checksum: "5e0eda0181f04a3556d10239fc9de5b7914c6cb9356db7841e4b7851c6f3a4d7"
        )
    ]
)
