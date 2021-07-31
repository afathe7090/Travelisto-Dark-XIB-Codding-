//
//  RootTaBarController.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 02/05/2021.
//

import UIKit


//MARK:- Mother OF The View Controller 
class RootTaBarController: UITabBarController {

    //MARK:-ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //this Set up the tab bar
        self.tabBar.tintColor = #colorLiteral(red: 0.9909656644, green: 0.3821876049, blue: 0.2119363248, alpha: 1)
        self.tabBar.barTintColor = .black
        self.tabBar.layer.cornerRadius = 15
        self.tabBar.clipsToBounds = true
        
        //VC Tab
        tabBarVC()
       
    }
    
    //Function Creat ViewController For the Tab bar
    func tabBarVC(){
        
        //MARK:-Note:
        //We Make All this Vc As a root of ViewController and Give the data of the bage
        
        // Creat the Traver ViewController
        let VC0 = UINavigationController(rootViewController: TravelVC())
        VC0.title = "Travel"
        VC0.tabBarItem.image = UIImage(named: "Image-7")
        
        //Creat the Flights ViewController
        let VC1 = UINavigationController(rootViewController:FlightsVC())
        VC1.title = "Flights"
        VC1.tabBarItem.image = UIImage(named: "Image-8")
        
        //Creat the Chatbot ViewController
        let VC2 = UINavigationController(rootViewController:ChatbotVC())
        VC2.title = "Chatbot"
        VC2.tabBarItem.image = UIImage(named: "Image-9")

        //Creat the Hotels ViewController
        let VC3 = UINavigationController(rootViewController:HotelsVC())
        VC3.title = "Hotels"
        VC3.tabBarItem.image = UIImage(named: "Image-11")

        //Creat the Profile ViewController
        let VC4 = UINavigationController(rootViewController:ProfileVC())
        VC4.title = "Profile"
        VC4.tabBarItem.image = UIImage(named: "Image-10")

        
        //Add all This ViewController To the TabBar 
        self.viewControllers = [VC0,VC1,VC2,VC3,VC4]

    }

    
    
}
