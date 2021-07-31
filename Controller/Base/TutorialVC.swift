//
//  TutorialVC.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 02/05/2021.
//

import UIKit

class TutorialVC: UIViewController {
    //MARK:- Outlet
    
    @IBOutlet weak var imageTutorial: UIImageView!
    @IBOutlet weak var loginLabelAsGesturePressed: UILabel!
    
    //MARK:- Variables
    
    let labelGesture = UITapGestureRecognizer()
    
    
    //MARK:- ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        addLabelTapGesture()
    }

    //MARK:- Action
    
    @IBAction func createAnAccountButtonPressed(_ sender: UIButton) {
        let creatNewAccountVC = creatNewAccountVC()
        creatNewAccountVC.modalPresentationStyle = .fullScreen
        present(creatNewAccountVC, animated: true, completion: nil)
    }
    
    
    @objc func labelGestureAction(){
        let SignInPageVC = SignInPageVC()
        SignInPageVC.modalPresentationStyle = .fullScreen
        present(SignInPageVC, animated: true, completion: nil)
    }
    
    //MARK:- Function
    
    // Function  gesture To the Label To Add Action
    func addLabelTapGesture(){
        
        loginLabelAsGesturePressed.isUserInteractionEnabled = true
        loginLabelAsGesturePressed.addGestureRecognizer(labelGesture)
        labelGesture.addTarget(self, action: #selector(labelGestureAction))
    }
}
