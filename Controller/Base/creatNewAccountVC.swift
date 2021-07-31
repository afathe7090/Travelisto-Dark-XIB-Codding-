//
//  creatNewAccountVC.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 02/05/2021.
//

import UIKit

class creatNewAccountVC: UIViewController {
    //MARK:- Outlet
    
    @IBOutlet weak var nameTextField: UITextField!{
        didSet{
            nameTextField.attributedPlaceholder = NSAttributedString(string: "Name", attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.2313497066, green: 0.231387645, blue: 0.2313377857, alpha: 1)])
        }
    }
    @IBOutlet weak var emailTextField: UITextField!{
        didSet{
            emailTextField.attributedPlaceholder = NSAttributedString(string: "Email Address", attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.2313497066, green: 0.231387645, blue: 0.2313377857, alpha: 1)])
        }
    }
    @IBOutlet weak var passwordTextField: UITextField!{
        didSet{
            passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.2313497066, green: 0.231387645, blue: 0.2313377857, alpha: 1)])
        }
    }
    

    //MARK:- ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    //MARK:-Action
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
    }
    
    
    //MARK:-Function
    
    //Function To Ended Any thing in page
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
