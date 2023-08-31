// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "OMGHTTPURLRQ",
    platforms: [
        .iOS(.v11),
        .tvOS(.v9),
        .watchOS(.v3),
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "OMGHTTPURLRQ-Static",
            type: .static,
            targets: ["OMGHTTPURLRQ"]),
        .library(
            name: "OMGHTTPURLRQUserAgent-Static",
            type: .static,
            targets: ["OMGHTTPURLRQUserAgent"]),
        .library(
            name: "OMGHTTPURLRQFormURLEncode-Static",
            type: .static,
            targets: ["OMGHTTPURLRQFormURLEncode"]),
        .library(
            name: "OMGHTTPURLRQ",
            type: .dynamic,
            targets: ["OMGHTTPURLRQ"]),
        .library(
            name: "OMGHTTPURLRQUserAgent",
            type: .dynamic,
            targets: ["OMGHTTPURLRQUserAgent"]),
        .library(
            name: "OMGHTTPURLRQFormURLEncode",
            type: .dynamic,
            targets: ["OMGHTTPURLRQFormURLEncode"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "OMGHTTPURLRQ",
            dependencies: [
                "OMGHTTPURLRQUserAgent",
                "OMGHTTPURLRQFormURLEncode"
            ],
            path: "Sources/RQ",
            publicHeadersPath: "."),
        .target(
            name: "OMGHTTPURLRQUserAgent",
            path: "Sources/UserAgent",
            publicHeadersPath: "."),
        .target(
            name: "OMGHTTPURLRQFormURLEncode",
            path: "Sources/FormURLEncode",
            publicHeadersPath: "."),
        .testTarget(
            name: "OMGHTTPURLRQTests",
            dependencies: ["OMGHTTPURLRQ"],
            path: "Tests",
            exclude: ["Tests-Info.plist"]),
    ]
)
