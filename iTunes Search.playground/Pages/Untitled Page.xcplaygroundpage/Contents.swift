import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

extension URL {

    func withQueries(_ queries: [String: String]) -> URL? {

        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map { URLQueryItem(name: $0.0, value: $0.1) }
        return components?.url
    }
}

let baseURL = URL(string: "https://itunes.apple.com/search?term=")!
let query: [String: String] = [
    "term": "finding nemo",
    "media": "movie",
    "Lang": "en_us",
    "limit": "10"]

let searchURL = baseURL.withQueries(query)!

URLSession.shared.dataTask(with: searchURL) { (data, response, error) in

    if let data = data,
        let string = String(data: data, encoding: .utf8) {

        print(string)
        PlaygroundPage.current.finishExecution()
    }
}.resume()
