import UIKit

// Create a new Core Graphics image instance
let size = CGSize(width: 100, height: 100)
UIGraphicsBeginImageContext(size)
guard let context = UIGraphicsGetCurrentContext() else { fatalError("Unable to get current context") }
context.setFillColor(UIColor.red.cgColor)
context.fill(CGRect(x: 0, y: 0, width: size.width, height: size.height))
let cgImage = context.makeImage()
UIGraphicsEndImageContext()

// Create a new labeled image
let labeledImage = UIImage(cgImage: cgImage!).withRenderingMode(.alwaysOriginal)

// Display the labeled image
let imageView = UIImageView(image: labeledImage)
imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
imageView.contentMode = .scaleAspectFit

// Add the labeled image to a view
let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
containerView.addSubview(imageView)
