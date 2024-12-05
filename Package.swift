// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorPlugins",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorFilesystem",
            type: .dynamic,
            targets: ["CapacitorFilesystem"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm", .upToNextMajor(from: "6.0.0"))
    ],
    targets: [
        .target(
            name: "CapacitorFilesystem",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "filesystem/ios/Sources/FilesystemPlugin"),
        .testTarget(
            name: "CapacitorFilesystemTests",
            dependencies: ["CapacitorFilesystem"],
            path: "filesystem/ios/Tests/FilesystemPluginTests")
    ]
)
