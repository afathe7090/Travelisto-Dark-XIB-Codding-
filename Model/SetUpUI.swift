//
//  SetUpUI.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 02/05/2021.
//

import Foundation
import UIKit

class InteritanceViewDesign: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Setup the Page VC
        SetNvigationControllerUI()
        
    }
    
    
    //IF we Back From the Small Bar Our VC WILL Be Small So We Use That To Make It Large IF we Back
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.isHidden = false
    }
    
    //Function Help Me To SetUp thw  ViewController
    func SetNvigationControllerUI(){
        
        // Tint Color Like : the back Button
        self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 0.9909656644, green: 0.3821876049, blue: 0.2119363248, alpha: 1)
       
        //To macke the viewController OF bar is Large
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        // BackGround Color OF Bar
        self.navigationController?.navigationBar.backgroundColor = .black
        
        // bar Tint is the Color if The bar Will Be Small
        self.navigationController?.navigationBar.barTintColor = .black
        
        // setup the title of page in viewController
        self.navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white , NSAttributedString.Key.font: UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.medium)]
        
        //This For the Small Bar Text Title
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
}


// protocol to can Be the Action For the the cell and Button in tableView by Pressesnt Or Navigation
extension InteritanceViewDesign: SignOut{
  
    // Func To make the Cell Is Action Going To Tutorial ViewController
    func goToSignIN() {
        let vc = TutorialVC()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    // Func To make the Cell Is Action Going To language ViewController
    func goToLanguageCells() {
        let cell = LanguageVC()
        self.navigationController?.pushViewController(cell, animated: true)
    }
    
}

