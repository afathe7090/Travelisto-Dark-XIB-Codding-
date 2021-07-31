//
//  TimeFloughtCell.swift
//  Travelisto-Dark
//
//  Created by AhmedFathy on 14/05/2021.
//

import UIKit

class TimeFloughtCell: UITableViewCell {
    //MARK:- Outlet
    @IBOutlet weak var flyOutTextField: UITextField!
    @IBOutlet weak var flyBackTxt: UITextField!
    

    //MARK:- awae from nib
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        //Add Action And the text of the data
        FormatterFunc(textField: flyOutTextField , Action: #selector(flyOutDatePicker))
        FormatterFunc(textField: flyBackTxt, Action: #selector(flyBackDatePicker))
    }
    
    //MARK:- Helper Function
    func FormatterFunc(textField: UITextField , Action: Selector){
        
        //Creat the Toolbar
        let toolBar = UIToolbar()
        
        //To Take the Place
        toolBar.sizeToFit()
        
        //Button For DisMiss Date picker
        let done = UIBarButtonItem(title: "Done", style: .plain, target:self, action: #selector(buttonBar))
        toolBar.setItems([done], animated: true)

        //Creat the Date Picker
        let datePicker = UIDatePicker()
        
        //State Of Date Picker
        datePicker.datePickerMode = .date
        
        // Style of the date Picker
        datePicker.preferredDatePickerStyle = .compact
        
        //Add Target for select the Date
        datePicker.addTarget(self, action: Action, for: UIControl.Event.valueChanged)
        
        //Make the TextField as a input from date picker
        textField.inputView = datePicker
        
        //add the toolBar
        textField.inputAccessoryView = toolBar
    }

    //action for the bar Button
    @objc func buttonBar(){
        self.endEditing(true)
    }

    //Selector action for the text Field
    @objc func flyOutDatePicker(sender: UIDatePicker){
        
        //Create formate of save the date
        let dateFormater = DateFormatter()
        
        // format of the date Saving
        dateFormater.dateFormat = "dd/MM/yyyy"
        
        //TextField Text of the Date
        flyOutTextField.text = dateFormater.string(from: sender.date)


    }
    @objc func flyBackDatePicker(sender: UIDatePicker){
        //Create formate of save the date
        let dateFormater = DateFormatter()
        
        // format of the date Saving
        dateFormater.dateFormat = "dd/MM/yyyy"
        
        //TextField Text of the Date
        flyBackTxt.text = dateFormater.string(from: sender.date)
    }
}
