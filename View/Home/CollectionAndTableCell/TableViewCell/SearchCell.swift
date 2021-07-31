//
//  SearchCell.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 02/05/2021.
//

import UIKit

class SearchCell: UITableViewCell {
    @IBOutlet weak var textField: UITextField!
    
    
    var delegate: goToFindFlights?
    let gesture = UITapGestureRecognizer()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        gestureForTheTextField()
        
    }

   //MARK:- helper Function
    
    func gestureForTheTextField(){
        textField.isUserInteractionEnabled = true
        textField.addGestureRecognizer(gesture)
        gesture.addTarget(self, action: #selector(gestureFunc))
    }
    
    
    //Action for the gesture
    @objc func gestureFunc(){
        delegate?.goToFindFlights()
    }
    
}
