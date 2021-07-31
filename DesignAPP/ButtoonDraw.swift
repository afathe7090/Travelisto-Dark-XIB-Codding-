//
//  ButtoonDraw.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 02/05/2021.
//

import UIKit

class ButtoonDraw: UIButton {

    override func draw(_ rect: CGRect) {
        layer.cornerRadius = frame.height / 2
        clipsToBounds = true
    }

}
