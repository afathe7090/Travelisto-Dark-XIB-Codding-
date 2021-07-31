//
//  ImageDesign.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 02/05/2021.
//

import UIKit

class ButtonOut: UIButton {

    override func draw(_ rect: CGRect) {
        layer.cornerRadius = 10
        clipsToBounds = true
    }

}
