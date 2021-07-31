//
//  FlightsVC.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 02/05/2021.
//

import UIKit

class FlightsVC: InteritanceViewDesign {

    //MARK:OutLet
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK:- Constants

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Flights"
        setUptableView()
    }
    
    
    //MARK:- Function

    //Function TO add Nib File to the TableVeiw
    func setUptableView(){
        tableView.register(UINib(nibName: "SearchCell", bundle: nil), forCellReuseIdentifier: "SearchCell")
        tableView.register(UINib(nibName: "PupolarTableCell", bundle: nil), forCellReuseIdentifier: "PupolarTableCell")
        tableView.register(UINib(nibName: "DealsTabelCell", bundle: nil), forCellReuseIdentifier: "DealsTabelCell")
        tableView.separatorStyle = .none
    }
}


//MARK:- Extention
extension FlightsVC: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flightDataTable.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCell", for: indexPath ) as! SearchCell
            
            
            //Accept Protocol to mack Search
            cell.delegate = self
            return cell
        }else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "PupolarTableCell", for: indexPath) as! PupolarTableCell
            
            //Note : data is avariable Have the Data from the Struct Array
            let data = flightDataTable[indexPath.row - 1]
            
            //Date Cell
            cell.getData(Image: data.collectionImage)
            cell.titleLBLCell.text = data.nameOfTableCell
            return cell
            
        }else if indexPath.row == 2  {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DealsTabelCell", for: indexPath) as! DealsTabelCell
            let data = flightDataTable[indexPath.row - 1]
            
            //Date Cell
            cell.dealName.text = data.nameOfTableCell
            cell.setDataCell(image: data.collectionImage)
            return cell
            
        } else if indexPath.row == 3{
                let cell = tableView.dequeueReusableCell(withIdentifier: "PupolarTableCell", for: indexPath) as! PupolarTableCell
                let data = flightDataTable[indexPath.row - 1]
                
            //Data Cell
                cell.getData(Image: data.collectionImage)
                cell.titleLBLCell.text = data.nameOfTableCell
                return cell
        }else {
            return UITableViewCell()
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0  {
            return 50
        }else if indexPath.row == 1 {
            return 250
        }else if indexPath.row == 2 {
            return 150
        }else {
            return 250
        }
    }
}


//MARK:- Protocol For Going To Find FlightVC
extension FlightsVC: goToFindFlights{
    func goToFindFlights() {
        let vc = FindFlightsVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
