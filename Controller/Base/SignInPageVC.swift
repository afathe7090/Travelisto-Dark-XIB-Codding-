//
//  SignInPageVC.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 02/05/2021.
//

import UIKit

class SignInPageVC: UIViewController, UITextFieldDelegate {
    //MARK:- OutLet
    
    @IBOutlet weak var signInButtonPresses: UIButton!
    @IBOutlet weak var titlelabelPage: UILabel!
    @IBOutlet weak var emailAddressTestField: UITextField!{
        didSet {
            emailAddressTestField.attributedPlaceholder = NSAttributedString(string: "Email Address", attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.2895799279, green: 0.2875743806, blue: 0.2943313718, alpha: 1)])
        }
    }
    @IBOutlet weak var passwordTextField: UITextField!{
        didSet {
            passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.2895799279, green: 0.2875743806, blue: 0.2943313718, alpha: 1)])
        }
    }
    @IBOutlet weak var forgetLabelGesturePressed: UILabel!
    
    //MARK:- Variables
    
    let labelGesture = UITapGestureRecognizer()
    
    
    //MARK:- ViewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()
        labelAddGesture()
        
        
    }

    //MARK:-Action
    @IBAction func backButtonPressed(_ sender: UIButton) {
        if signInButtonPresses.titleLabel?.text == "Sign In"{
            dismiss(animated: true, completion: nil)
        }else{
            backDataPageAsLogin()
        }
    }
    
    @IBAction func signInButtonPresses(_ sender: UIButton) {
        
        // going To Sign Page
        let rootNavigationController = RootTaBarController()
        rootNavigationController.modalPresentationStyle = .fullScreen
        present(rootNavigationController, animated: true, completion: nil)
    }
    
    // Don't Go To Next bage But Move And reload Data For page
    @objc func labelForgetAction(){
        //Reload Page Comunants
        titlelabelPage.text = "Reset password"
        passwordTextField.isHidden = true
        signInButtonPresses.setTitle("Reset your password", for: .normal)
        forgetLabelGesturePressed.isHidden = true
    }
    	
    //MARK:- Function
    
    //Function To make tha label Is A clickable
    func labelAddGesture(){
        
        // Add Action For make the label is A clickable
        forgetLabelGesturePressed.isUserInteractionEnabled = true
        forgetLabelGesturePressed.addGestureRecognizer(labelGesture)
        labelGesture.addTarget(self, action: #selector(labelForgetAction))
    }
    
    //Delete The Update Of page
    func backDataPageAsLogin(){
        
        //Change The Text Field and the Button Name To Make the Sign In Page
        titlelabelPage.text = "Sign in"
        passwordTextField.isHidden = false
        signInButtonPresses.setTitle("Sign In", for: .normal)
        forgetLabelGesturePressed.isHidden = false

    }
    
    //Function To Ended Any thing in page 
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
