//
//  ProfileVC.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 02/05/2021.
//

import UIKit


class ProfileVC: InteritanceViewDesign {

    //MARK:OutLet
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    //MARK:- Constants

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Profile"
        XibTableNib()
        

    }
    
    
    
    //MARK:- Function

    //Add Nib File
    func XibTableNib(){
        tableView.separatorStyle = .none
        tableView.register(UINib(nibName: "ImageNameCell", bundle: nil), forCellReuseIdentifier: "ImageNameCell")
        tableView.register(UINib(nibName: "TableViewDetails", bundle: nil), forCellReuseIdentifier: "TableViewDetails")
        tableView.register(UINib(nibName: "SignOutCell", bundle: nil), forCellReuseIdentifier: "SignOutCell")
    }
}


//MARK:- Extention

extension ProfileVC: UITableViewDelegate ,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageNameCell", for: indexPath ) as! ImageNameCell
            return cell
            
        }else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "SignOutCell", for: indexPath) as! SignOutCell
            
            //For Present To Sign Out
            cell.delegate = self
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewDetails", for: indexPath) as! TableViewDetails
            
            //For Nvigation Push
            cell.delegate = self
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 150
        }else if indexPath.row == 1 {
            return 325
        }else {
            return 150
        }
        
    }
}
