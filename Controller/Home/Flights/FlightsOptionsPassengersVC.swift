//
//  FlightsOptionsPassengersVC.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 15/05/2021.
//

import UIKit

class FlightsOptionsPassengersVC: UIViewController {
    //MARK:- Outlet
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK:- ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //NibFile
        setUpNibFileTableCell()
    }
    
    //MARK:- Helper Function
    
    //Add Nib File
    func setUpNibFileTableCell(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "FlightsOptionsPassengersCells", bundle: nil), forCellReuseIdentifier: "FlightsOptionsPassengersCells")
        tableView.register(UINib(nibName: "CheckDataFlightOptionsCell", bundle: nil), forCellReuseIdentifier: "CheckDataFlightOptionsCell")
    }
    
    
    //MARK:- Action
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func doneButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}

//MARK:- Extension
extension FlightsOptionsPassengersVC: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FlightsOptionsPassengersCells", for: indexPath) as!
            FlightsOptionsPassengersCells
                
        
        // data cell The Data Are Be Saves In ALLDataProject.swift
        cell.kindPassengersLBL.text = KindPassenger[indexPath.row ]
        cell.yearsPassengersLBL.text = yearsPassenger[indexPath.row ]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
    
}
