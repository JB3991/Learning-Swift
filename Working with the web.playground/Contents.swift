import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let apiKey = "t7WuLtNvmhOpOqUPnPZJZ4mvHRyPBOe2JKWfaC9J"

let url = URL(string: "https://api.nasa.gov/planetary/apod?api_key=\(apiKey)")!

let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    if let data = data {
        let string = String(data: data, encoding: .utf8)
        print(string)
    }
    PlaygroundPage.current.finishExecution()
}
task.resume()
