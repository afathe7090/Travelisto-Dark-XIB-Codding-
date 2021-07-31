//
//  SignOutCell.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 03/05/2021.
//

import UIKit

class SignOutCell: UITableViewCell {
    var delegate: SignOut?

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    @IBAction func signOutButttonPressed(_ sender: Any) {
        delegate?.goToSignIN()
    }
    
}
