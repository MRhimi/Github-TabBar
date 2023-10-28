//
//  Extensions.swift
//  GithubTabBar
//
//  Created by MRhimi on 28/10/2023.
//

import UIKit

// MARK: - Extension UIImage

extension UIImage {
    
    convenience init?(view: UIView) {
        let renderer = UIGraphicsImageRenderer(bounds: view.bounds)
        let image = renderer.image { rendererContext in
            view.layer.render(in: rendererContext.cgContext)
        }

        if let cgImage = image.cgImage {
            self.init(cgImage: cgImage, scale: UIScreen.main.scale, orientation: .up)
        } else {
            return nil
        }
    }
}

// MARK: - Extension UIView

extension UIView {
    
     func addBorder(width: CGFloat, color: UIColor) {
        layer.borderWidth = width
        layer.borderColor = color.cgColor
        layer.masksToBounds = true
    }
    
     func setCornerRadius(radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
}

