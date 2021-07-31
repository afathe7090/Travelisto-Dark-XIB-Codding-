//
//  TripOpenVC.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 13/05/2021.
//

import UIKit

class TripOpenVC: UIViewController {
    //MARK:- Outlet
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK:- ViewDidload
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        
        //Add Nib Function
        AddNibFileTableView()
        
    }
    
    //MARK:- Helper Function
        
    func AddNibFileTableView(){
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //ADD the NIB Fie to the TableView
        tableView.register(UINib(nibName: "ImageTripCell", bundle: nil), forCellReuseIdentifier: "ImageTripCell")
        tableView.register(UINib(nibName: "CapitalTextCell", bundle: nil), forCellReuseIdentifier: "CapitalTextCell")
        tableView.register(UINib(nibName: "MapCell", bundle: nil), forCellReuseIdentifier: "MapCell")
        tableView.register(UINib(nibName: "TopExperiancesCell", bundle: nil), forCellReuseIdentifier: "TopExperiancesCell")
        tableView.register(UINib(nibName: "ItalianFoodCell", bundle: nil), forCellReuseIdentifier: "ItalianFoodCell")
        tableView.register(UINib(nibName: "ResturantsTableCell", bundle: nil), forCellReuseIdentifier: "ResturantsTableCell")
        tableView.register(UINib(nibName: "BookatripCell", bundle: nil), forCellReuseIdentifier: "BookatripCell")
        
    }
}

//MARK:- Extension
extension TripOpenVC: UITableViewDelegate ,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Number OF Cell
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageTripCell", for: indexPath) as! ImageTripCell
            
            // accet for the Delegate To Accept the data
            cell.delegate = self
            return cell
        }else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CapitalTextCell", for: indexPath) as! CapitalTextCell
            return cell
        }else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MapCell", for: indexPath) as! MapCell
            return cell
        }else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TopExperiancesCell", for: indexPath) as! TopExperiancesCell
            return cell
        }else if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItalianFoodCell", for: indexPath) as! ItalianFoodCell
            return cell
        }else if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BookatripCell", for: indexPath) as! BookatripCell
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ResturantsTableCell", for: indexPath) as! ResturantsTableCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 250
        }else if indexPath.row == 1 {
            return 300
        }else if indexPath.row == 2 {
            return 250
        }else if indexPath.row == 3{
            return 225
        }else if indexPath.row == 4 {
            return 185
        }else if indexPath.row == 5{
            return 100
        }else{
            return 0
            
        }
    }
}



//MARK:- Protocol To Pop From the Page
extension TripOpenVC: backNav{
    
    func popNavigation() {
        self.navigationController?.popViewController(animated: true)
    }
}
