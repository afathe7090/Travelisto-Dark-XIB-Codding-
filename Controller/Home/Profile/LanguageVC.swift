//
//  CountryCellProfile.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 03/05/2021.
//

import UIKit

class LanguageVC: InteritanceViewDesign {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Language"
        //Data OF TableView
        detUpTableView()
       
        
    }
    //MARK:- Helper Function
    
    //Data OF TableView
    func detUpTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "LanguageTableCell", bundle: nil), forCellReuseIdentifier: "LanguageTableCell")
    }

    
}
extension LanguageVC: UITableViewDelegate ,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return languageCell.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LanguageTableCell", for: indexPath) as! LanguageTableCell
        
        //Data Cell
        cell.languageName.text = languageCell[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    
    
}
