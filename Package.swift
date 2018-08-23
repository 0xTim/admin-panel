// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdminPanel",
    products: [
        .library(
            name: "AdminPanel",
            targets: ["AdminPanel"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/fluent.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/fluent-mysql.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/leaf.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/auth.git", from: "2.0.0"),

        .package(url: "https://github.com/nodes-vapor/sugar.git", from: "3.0.0-beta"),
        .package(url: "https://github.com/nodes-vapor/flash.git", from: "3.0.0"),
        .package(url: "https://github.com/nodes-vapor/bootstrap.git", from: "2.0.0"),
        .package(url: "https://github.com/nodes-vapor/reset.git", from: "1.0.0-beta"),
        .package(url: "https://github.com/nodes-vapor/submissions.git", from: "1.0.0-beta"),

        .package(url: "https://github.com/twof/VaporMailgunService.git", from: "1.1.0"),
    ],
    targets: [
        .target(
            name: "AdminPanel",
            dependencies: [
                "Vapor",
                "Fluent",
                "FluentMySQL",
                "Leaf",
                "Authentication",
                "Sugar",
                "Flash",
                "Bootstrap",
                "Reset",
                "Submissions",
                "Mailgun"
            ]),
        .testTarget(
            name: "AdminPanelTests",
            dependencies: ["AdminPanel"]),
    ]
)
