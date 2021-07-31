//
//  FlightsOffersVC.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 15/05/2021.
//

import UIKit

class FlightsOffersVC: UIViewController {
    //MARK:- Outlet
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Bucharest - Rome"
        setupTableView()
    }
    
    //MARK:- Helper Functions

    //Add NibFile
    func setupTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(UINib(nibName: "DateOffersCell", bundle: nil), forCellReuseIdentifier: "DateOffersCell")
        tableView.register(UINib(nibName: "BucharestOTPCell", bundle: nil), forCellReuseIdentifier: "BucharestOTPCell")
        
        
    }
    
    
    
    
    
}
//MARK:- Extension

extension FlightsOffersVC: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "DateOffersCell", for: indexPath) as! DateOffersCell
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BucharestOTPCell", for: indexPath) as! BucharestOTPCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 75
            
        }else {
            return 150
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
