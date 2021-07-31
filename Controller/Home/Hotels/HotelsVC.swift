//
//  HotelsVC.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 02/05/2021.
//

import UIKit

class HotelsVC: InteritanceViewDesign {
    
    //MARK:OutLet
    
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK:- ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Hotels"
        
        //Add Nib File
        setUptableView()
    }
    
    
    //MARK:- Action
    
    
    
    
    //MARK:- Function
    
    //Add Nib File
    func setUptableView(){
        tableView.register(UINib(nibName: "SearchCell", bundle: nil), forCellReuseIdentifier: "SearchCell")
        tableView.register(UINib(nibName: "PupolarTableCell", bundle: nil), forCellReuseIdentifier: "PupolarTableCell")
        tableView.register(UINib(nibName: "DealsTabelCell", bundle: nil), forCellReuseIdentifier: "DealsTabelCell")
        tableView.separatorStyle = .none
    }
}


//MARK:- Extention

extension HotelsVC: UITableViewDelegate ,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return HotelsData.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCell", for: indexPath ) as! SearchCell
            
            return cell
        }else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "PupolarTableCell", for: indexPath) as! PupolarTableCell
            
            //Note: data is the array OF the Struct
            let data = HotelsData[indexPath.row - 1]
            
            cell.getData(Image: data.collectionImage)
            cell.titleLBLCell.text = data.nameOfTableCell
            return cell
            
        }else if indexPath.row == 2  {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DealsTabelCell", for: indexPath) as! DealsTabelCell
            
            //Note: data is the array OF the Struct
            let data = HotelsData[indexPath.row - 1]
            //Data Cell
            cell.dealName.text = data.nameOfTableCell
            cell.setDataCell(image: data.collectionImage)
            return cell
            
        } else if indexPath.row == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "PupolarTableCell", for: indexPath) as! PupolarTableCell
            //Note: data is the array OF the Struct
            let data = HotelsData[indexPath.row - 1]
            
            //Data Of Cell
            cell.getData(Image: data.collectionImage)
            cell.titleLBLCell.text = data.nameOfTableCell
            return cell
        }else {
            return UITableViewCell()
        }
        
    }
    
    //Height of the cells
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0  {
            return 50
        }else if indexPath.row == 1 {
            return 250
        }else if indexPath.row == 2 {
            return 150
        }else {
            return 270
        }
    }
}

