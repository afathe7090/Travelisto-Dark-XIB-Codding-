//
//  ImageTripCell.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 13/05/2021.
//

import UIKit

class ImageTripCell: UITableViewCell {
    //MARK:- Outlet
    @IBOutlet weak var backButtonPressed: UIButton!
    
    //MARK:- Constants
    var delegate: backNav?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        
        //Delegate for back
        delegate?.popNavigation()
    }
    
}
