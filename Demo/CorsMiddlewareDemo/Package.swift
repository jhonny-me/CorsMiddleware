import PackageDescription

let package = Package(
    name: "CorsMiddlewareDemo",
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 1, minor: 1),
        .Package(url: "https://github.com/jhonny-me/CorsMiddleware.git", majorVersion: 1, minor: 0)    
        ],
    exclude: [
        "Config",
        "Database",
        "Localization",
        "Public",
        "Resources",
        "Tests",
    ]
)

