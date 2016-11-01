import Vapor
import HTTP
import CorsMiddleware

let drop = Droplet(
    availableMiddleware: ["cors" : CorsMiddleware()]
)

drop.get { req in
    return try drop.view.make("welcome", [
    	"message": drop.localization[req.lang, "welcome", "title"]
    ])
}

drop.post("test") { req in
    guard let json = req.json else { throw Abort.badRequest }
    return json
}

drop.resource("posts", PostController())

drop.run()
