# CorsMiddleware
CORS Middleware for Vapor

![Platforms](https://img.shields.io/badge/platforms-Linux%20%7C%20OS%20X-blue.svg)
![Package Managers](https://img.shields.io/badge/package%20managers-SwiftPM-yellow.svg)

## What is this
This is a middleware for [Vapor](https://vapor.codes/) framework to solving [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS) problem. 

## How to use
#### Package (recommended)
1. add `.Package(url: "https://github.com/jhonny-me/CorsMiddleware.git", majorVersion: 1, minor: 0)` to Package.swift => dependencies
2. in your code `let drop = Droplet(availableMiddleware: ["cors" :CorsMiddleware()])`
3. add `"cors"` to Config/droplet.json => middleware => server

#### Manually
1. download or clone the repo
2. drop CorsMiddleware.swift to your `<Project Dir>/Sources/App/Middlewares` folder
2. in your code `let drop = Droplet(availableMiddleware: ["cors" :CorsMiddleware()])`
3. add `"cors"` to Config/droplet.json => middleware => server

## About
I spent times to solve the CORS problem, and was frustrated when `Droplet(
	availableMiddleware: ["cors" : CorsMiddleware()],
	serverMiddleware: ["cors"])` not working. That's why i create the package version. Source code coming from https://github.com/syky27/LostSocks-api/blob/master/Sources/App/Middleware/CorsMiddleware.swift
