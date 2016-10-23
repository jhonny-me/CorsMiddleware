import PackageDescription

let package = Package(
    name: "CorsMiddleware",
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 1)
    ]
)
