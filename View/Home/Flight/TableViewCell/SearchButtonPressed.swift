//
//  SearchButtonPressed.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 14/05/2021.
//

import UIKit

class SearchButtonPressed: UITableViewCell {

    var delegate: searchButton?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
        
    }
    @IBAction func searchButtonPressed(_ sender: UIButton) {
        delegate?.goToOffer()
    }
    
}
