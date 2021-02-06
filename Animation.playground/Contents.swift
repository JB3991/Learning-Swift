import UIKit
import PlaygroundSupport

let liveViewFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let liveView = UIView(frame: liveViewFrame)
liveView.backgroundColor = .white

PlaygroundPage.current.liveView = liveView

var smallFrame = CGRect(x: 0, y: 0, width: 100, height: 100)
var sqaure = UIView(frame: smallFrame)
sqaure.backgroundColor = .blue

liveView.addSubview(sqaure)

UIView.animate(withDuration: 3.0, animations: {
    
    let scaleTransform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    let rotateTransform = CGAffineTransform(rotationAngle: .pi)
    let translateTransform = CGAffineTransform(translationX: 200, y: 200)
    
    let combotransform = scaleTransform.concatenating(rotateTransform).concatenating(translateTransform)
    sqaure.transform = combotransform

}) { (_) in
    UIView.animate(withDuration: 3.0) {
        sqaure.backgroundColor = .orange
        sqaure.transform = CGAffineTransform.identity
    }
}
