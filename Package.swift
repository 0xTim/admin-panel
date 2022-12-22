// swift-tools-version:4.2
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
        .package(url: "https://github.com/nodes-vapor/bootstrap.git", from: "4.0.0"),
        .package(url: "https://github.com/nodes-vapor/flash.git", from: "5.0.0"),
        .package(url: "https://github.com/nodes-vapor/paginator.git", from: "4.0.0"),
        .package(url: "https://github.com/0xTim/reset.git", .branchItem("master")),
        .package(url: "https://github.com/nodes-vapor/submissions.git", from: "2.0.0"),
        .package(url: "https://github.com/nodes-vapor/sugar.git", from: "4.0.0"),

        .package(url: "https://github.com/0xTim/Mailgun.git", .branchItem("vapor-3-logging")),

        .package(url: "https://github.com/vapor/auth.git", from: "2.0.0"),
        .package(url: "https://github.com/vapor/fluent-mysql.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/fluent.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/leaf.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
    ],
    targets: [
        .target(
            name: "AdminPanel",
            dependencies: [
                "Authentication",
                "Bootstrap",
                "Flash",
                "Fluent",
                "FluentMySQL",
                "Leaf",
                "Mailgun",
                "Paginator",
                "Reset",
                "Submissions",
                "Sugar",
                "Vapor",
            ]),
        .testTarget(
            name: "AdminPanelTests",
            dependencies: ["AdminPanel"]),
    ]
)
