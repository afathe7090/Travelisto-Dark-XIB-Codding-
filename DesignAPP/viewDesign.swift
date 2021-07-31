//
//  viewDesign.swift
//  Shwimah
//
//  Created by AhmedFathy on 29/03/2021.
//

import UIKit

class viewDesign: UIImageView {

    @IBInspectable override var alpha: CGFloat {
       didSet {
          setNeedsLayout()
       }
    }
    
   @IBInspectable var cornerRadius: CGFloat = 0.0 {
      didSet {
         setNeedsLayout()
      }
   }
   @IBInspectable var shadowColor: UIColor = UIColor.darkGray {
      didSet {
         setNeedsLayout()
      }
   }
   @IBInspectable var shadowOffsetWidth: CGFloat = 0.0 {
      didSet {
         setNeedsLayout()
      }
   }
    @IBInspectable var shadowOffsetHeight: CGFloat = 0.0 {
      didSet {
         setNeedsLayout()
      }
   }
    @IBInspectable var shadowOpacity: Float = 0.0 {
      didSet {
         setNeedsLayout()
      }
   }
   @IBInspectable var shadowRadius: CGFloat = 0.0 {
      didSet {
         setNeedsLayout()
      }
   }
    
    @IBInspectable var borderColour:UIColor = .black {
       didSet {
          setNeedsLayout()
       }
    }
    
    @IBInspectable var borderWidth:CGFloat = 0.0 {
       didSet {
          setNeedsLayout()
       }
    }
    
    
   private var shadowLayer: CAShapeLayer = CAShapeLayer() {
      didSet {
         setNeedsLayout()
      }
   }
   override func layoutSubviews() {
      super.layoutSubviews()
      layer.cornerRadius = cornerRadius
      layer.borderColor = borderColour.cgColor
      layer.borderWidth = borderWidth
      shadowLayer.path = UIBezierPath(roundedRect: bounds,
         cornerRadius: cornerRadius).cgPath
      shadowLayer.fillColor = backgroundColor?.cgColor
      shadowLayer.shadowColor = shadowColor.cgColor
      shadowLayer.shadowPath = shadowLayer.path
      shadowLayer.shadowOffset = CGSize(width: shadowOffsetWidth,
         height: shadowOffsetHeight)
      shadowLayer.shadowOpacity = shadowOpacity
      shadowLayer.shadowRadius = shadowRadius
      layer.insertSublayer(shadowLayer, at: 0)
   }

}
