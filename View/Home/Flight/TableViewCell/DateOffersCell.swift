//
//  DateOffersCell.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 15/05/2021.
//

import UIKit

class DateOffersCell: UITableViewCell {

    //MARK:- Oulet
    @IBOutlet weak var Aug28ButtonPressed: UIButton!
    @IBOutlet weak var Aug27ButtonPressed: UIButton!
    @IBOutlet weak var Aug26ButtonPressed: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    //MARK:- Action
    @IBAction func Aug28ButtonPressed(_ sender: UIButton) {
        Aug28ButtonPressed.backgroundColor = #colorLiteral(red: 0.9919399619, green: 0.4100482166, blue: 0.1964459121, alpha: 1)
        Aug27ButtonPressed.backgroundColor = #colorLiteral(red: 0.0901845172, green: 0.0902037397, blue: 0.09017842263, alpha: 1)
        Aug26ButtonPressed.backgroundColor = #colorLiteral(red: 0.0901845172, green: 0.0902037397, blue: 0.09017842263, alpha: 1)
    }
    
    @IBAction func Aug26ButtonPressed(_ sender: Any) {
        Aug28ButtonPressed.backgroundColor = #colorLiteral(red: 0.0901845172, green: 0.0902037397, blue: 0.09017842263, alpha: 1)
        Aug27ButtonPressed.backgroundColor = #colorLiteral(red: 0.0901845172, green: 0.0902037397, blue: 0.09017842263, alpha: 1)
        Aug26ButtonPressed.backgroundColor = #colorLiteral(red: 0.9919399619, green: 0.4100482166, blue: 0.1964459121, alpha: 1)
    }
    @IBAction func Aug27ButtonPressed(_ sender: Any) {
        Aug28ButtonPressed.backgroundColor = #colorLiteral(red: 0.0901845172, green: 0.0902037397, blue: 0.09017842263, alpha: 1)
        Aug27ButtonPressed.backgroundColor = #colorLiteral(red: 0.9919399619, green: 0.4100482166, blue: 0.1964459121, alpha: 1)
        Aug26ButtonPressed.backgroundColor = #colorLiteral(red: 0.0901845172, green: 0.0902037397, blue: 0.09017842263, alpha: 1)
    }
}
