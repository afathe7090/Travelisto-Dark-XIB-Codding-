//
//  TravelVC.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 02/05/2021.
//

import UIKit

// MARK:- We Inheriance From Class Have The Properites OF the page
class TravelVC: InteritanceViewDesign{
    //MARK:OutLet
    
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK:- variable
    
    
    
    
    //MARK:- Constants
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Travel"
        setUpNibFileTableView()
        
        
    }
    
    
    
    //MARK:- Function
 
    // Add Nib File of table view
    func setUpNibFileTableView(){
        tableView.register(UINib(nibName: "imageRomeCell", bundle: nil), forCellReuseIdentifier: "imageRomeCell")
        tableView.register(UINib(nibName: "TravelingPalceingCell", bundle: nil), forCellReuseIdentifier: "TravelingPalceingCell")
    }
}


//MARK:- Extention
extension TravelVC: UITableViewDelegate ,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Numer Of Cell We Add 1 To add The Image Cell Beacouse HomeTableData have Number Of Date of Cell Traveling
        return homeTableData.count + 1
    }
        
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        //Cell Image First In Page
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "imageRomeCell", for: indexPath) as! imageRomeCell
            return cell
        }else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TravelingPalceingCell", for: indexPath) as! TravelingPalceingCell
            
            let dataTable = homeTableData[indexPath.row - 1]

            //Cell Data
            cell.getDataCell(image: dataTable.collectionImage)
            cell.categuresLBL.text = dataTable.nameOfTableCell
            return cell
        }else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TravelingPalceingCell", for: indexPath) as! TravelingPalceingCell
            
            let dataTable = homeTableData[indexPath.row - 1]

            //Cell Data
            cell.getDataCell(image: dataTable.collectionImage)
            cell.categuresLBL.text = dataTable.nameOfTableCell
            return cell
        }else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 230
        }else {
            return 275
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //Going from cell to the Trip Open Vc
        if indexPath.row == 0 {
            let vc = TripOpenVC()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

