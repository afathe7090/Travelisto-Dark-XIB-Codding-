//
//  FindFlightsVC.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 14/05/2021.
//

import UIKit

class FindFlightsVC: UIViewController {
    //MARK:- Outlet
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK:- Variables
    var arrayData = [String]()
    
    
    //MARK:- ViewDidload
    override func viewDidLoad() {
        super.viewDidLoad()
        //Nib File
        AddNibFileTableView()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Find Flight"
        
    }
    
    //MARK:- Helper Function
    
    
    //ADD Nib File
    func AddNibFileTableView(){
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(UINib(nibName: "TextFieldName", bundle: nil), forCellReuseIdentifier: "TextFieldName")
        tableView.register(UINib(nibName: "TimeFloughtCell", bundle: nil), forCellReuseIdentifier: "TimeFloughtCell")
        tableView.register(UINib(nibName: "wayAndReturnCell", bundle: nil), forCellReuseIdentifier: "wayAndReturnCell")
        tableView.register(UINib(nibName: "SearchButtonPressed", bundle: nil), forCellReuseIdentifier: "SearchButtonPressed")

    }
}

//MARK:- Extension 
extension FindFlightsVC: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "wayAndReturnCell", for: indexPath) as! wayAndReturnCell
            return cell
        }else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextFieldName", for: indexPath) as! TextFieldName
            
            //Data Cell And make the Placeholder For the TextField
            cell.textFieldNameLBL.text = "From"
            cell.textField.attributedPlaceholder = NSAttributedString(string: "Enter Your Place", attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)])
            return cell
        }else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextFieldName", for: indexPath) as! TextFieldName
            
            //Data Cell And make the Placeholder For the TextField
            cell.textField.attributedPlaceholder = NSAttributedString(string: "Enter Your Trip Place", attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)])
            cell.textFieldNameLBL.text = "To"
            return cell
        }else if indexPath.row == 3 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "TimeFloughtCell" , for: indexPath) as! TimeFloughtCell
            return cell
            
        }else if indexPath.row == 4{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextFieldName", for: indexPath) as! TextFieldName
            
            //Data Cell OF the TextField
            cell.textField.text = "2 Adults"
            cell.textFieldNameLBL.text = "Passengers"
            cell.textField.isUserInteractionEnabled = true
            return cell
            
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SearchButtonPressed", for: indexPath) as! SearchButtonPressed
            
            cell.delegate = self
            return cell
        }
    }
    
    
    //Hight For The Cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        // Passenger details Page as Index 4
        if indexPath.row == 4 {
            
            let vc = FlightsOptionsPassengersVC()
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
        }
        
        
        //Search Cell ass Button Action
        if indexPath.row == 5 {
            
            let vc = FlightsOffersVC()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    //Function Touched Ended For End the Any Thing For The page
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

//MARK:- Protocol For Going to FlightOffers
extension FindFlightsVC: searchButton{
    func goToOffer() {
        
        let vc = FlightsOffersVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
