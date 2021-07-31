//
//  LanguageTableCell.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 03/05/2021.
//

import UIKit

class LanguageTableCell: UITableViewCell {
    @IBOutlet weak var buttonCheck: UIButton!
    @IBOutlet weak var languageName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        //To Change the color of the text Label
        self.languageName.highlightedTextColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        self.buttonCheck.isHidden = true
       
    }
    override var isSelected: Bool{
        didSet{
            if isSelected{
                self.buttonCheck.isHidden = false
            }
        }
       
    }

}
