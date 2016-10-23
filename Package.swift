import PackageDescription

let package = Package(
    name: "CorsMiddleware",
    dependencies: [
	.Package(url: "https://github.com/jhonny-me/CorsMiddleware.git", majorVersion: 1)
    ]
)
