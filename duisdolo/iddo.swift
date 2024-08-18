import UIKit

class GradientView: UIView {

    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        // Define gradient colors
        let colors = [UIColor.red.cgColor, UIColor.blue.cgColor] as CFArray
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        
        // Create gradient object
        guard let gradient = CGGradient(colorsSpace: colorSpace, colors: colors, locations: nil) else { return }
        
        // Define start and end points for the gradient
        let startPoint = CGPoint(x: rect.midX, y: rect.minY)
        let endPoint = CGPoint(x: rect.midX, y: rect.maxY)
        
        // Draw the gradient
        context.drawLinearGradient(gradient, start: startPoint, end: endPoint, options: [])
    }
}

// Usage in a view controller
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientView = GradientView(frame: CGRect(x: 50, y: 50, width: 300, height: 300))
        self.view.addSubview(gradientView)
    }
}
