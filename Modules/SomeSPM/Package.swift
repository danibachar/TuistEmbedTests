
// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SomeSPM",
    defaultLocalization: "en",
    platforms: [.iOS(.v15), .macOS(.v12)],
    products: [.library(name: "SomeSPM", type: .dynamic, targets: ["SomeSPM"])],
    dependencies: [
        .package(url: "https://github.com/nalexn/ViewInspector", .upToNextMajor(from: "0.9.6")),
    ],
    targets: [
        .target(
            name: "SomeSPM",
            dependencies: []
        ),
        .testTarget(name: "SomeSPMTests",
                    dependencies: [
                    "SomeSPM",
                    .product(name: "ViewInspector", package: "ViewInspector"),
                    ]
        ),
    ]
)
