//
//  FlightsOptionsPassengersCells.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 15/05/2021.
//

import UIKit
class FlightsOptionsPassengersCells: UITableViewCell {
    
    //MARK:- Outlet
    @IBOutlet weak var cunterLBL: UILabel!
    @IBOutlet weak var kindPassengersLBL: UILabel!
    @IBOutlet weak var yearsPassengersLBL: UILabel!
    
   
    
    //MARK: - Variables
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    

    //MARK:- Action 
    @IBAction func addtionButtonPressed(_ sender: Any) {
        
        cunterLBL.text = "\(Int(cunterLBL.text!)! + 1)"
        
    }
    
    @IBAction func minuseButtonPressed(_ sender: Any) {
        if cunterLBL.text != "0"{
            cunterLBL.text = "\(Int(cunterLBL.text!)! - 1)"
            
        }

    }
}

