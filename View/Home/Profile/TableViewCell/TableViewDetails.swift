//
//  TableViewDetails.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 03/05/2021.
//

import UIKit

class TableViewDetails: UITableViewCell {
    //MARK:- Outlet
    @IBOutlet weak var tableView: UITableView!
    
    //MARK:- Constants
    let view = UIView()
    var delegate: SignOut?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        tableView.separatorColor = .white
        tableView.tableFooterView = UIView()
        
        // Add the Nib File
        tableView.register(UINib(nibName: "dataCell", bundle: nil), forCellReuseIdentifier: "dataCell")
        tableView.register(UINib(nibName: "RemminderCell", bundle: nil), forCellReuseIdentifier: "RemminderCell")
    }
    
    
    
    
}

//MARK:- Extension
extension TableViewDetails: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataOfProfile.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RemminderCell", for: indexPath) as! RemminderCell
            return cell
            
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "dataCell", for: indexPath) as! dataCell
            
            //Data cell
            cell.nameDataLBL.text = dataOfProfile[indexPath.row]
            cell.detailDataLBL.text = detailsOfCell[indexPath.row]
            return cell
            
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if indexPath.row == 0 {
            
            //Protocol for going to the language Page
            delegate?.goToLanguageCells()
        }
    }
    
    
}
