//
//  CorsMiddleware.swift
//  LostSocks
//
//  Created by Tomas Sykora, jr. on 14/10/2016.
//
//

import HTTP
import JSON
import Vapor

public class CorsMiddleware: Middleware {
	func respond(to request: Request, chainingTo chain: Responder) throws -> Response {
		let response: Response
		if request.isPreflight {
			response = "".makeResponse()
		} else {
			response = try chain.respond(to: request)
		}

		response.headers["Access-Control-Allow-Origin"] = request.headers["Origin"] ?? "*";
		response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, Origin, Content-Type, Accept"
		response.headers["Access-Control-Allow-Methods"] = "POST, GET, PUT, OPTIONS, DELETE, PATCH"
		return response
	}
	
	public init() {}
}

extension Request {
	var isPreflight: Bool {
		return method == .options
			&& headers["Access-Control-Request-Method"] != nil
	}
}
