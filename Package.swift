// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorPlugins",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorFilesystem",
            targets: ["FilesystemPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "FilesystemPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "filesystem/ios/Sources/FilesystemPlugin"),
        .testTarget(
            name: "FilesystemPluginTests",
            dependencies: ["FilesystemPlugin"],
            path: "filesystem/ios/Tests/FilesystemPluginTests")
    ]
)
