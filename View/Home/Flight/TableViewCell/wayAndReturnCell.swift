//
//  wayAndReturnCell.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 14/05/2021.
//

import UIKit

class wayAndReturnCell: UITableViewCell {

    //MARK:- Outlet
    @IBOutlet weak var returnButtonPressed: UIButton!
    @IBOutlet weak var oneWayButtonPressed: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    //MARK:- Action Button Pressed
    
    @IBAction func returnButtonPressed(_ sender: UIButton) {
        self.returnButtonPressed.backgroundColor = #colorLiteral(red: 0.9919399619, green: 0.4100482166, blue: 0.1964459121, alpha: 1)
        self.oneWayButtonPressed.backgroundColor = #colorLiteral(red: 0.2313497066, green: 0.231387645, blue: 0.2313377857, alpha: 1)
    }
    
    @IBAction func oneWayButtonPressed(_ sender: UIButton) {
        self.oneWayButtonPressed.backgroundColor = #colorLiteral(red: 0.9919399619, green: 0.4100482166, blue: 0.1964459121, alpha: 1)
        self.returnButtonPressed.backgroundColor = #colorLiteral(red: 0.2313497066, green: 0.231387645, blue: 0.2313377857, alpha: 1)
    }
}
