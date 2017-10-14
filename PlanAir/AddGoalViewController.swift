//
//  AddGoalViewController.swift
//  PlanAir
//
//  Created by RupalT on 10/14/17.
//  Copyright © 2017 RupalT. All rights reserved.
//

import UIKit

class AddGoalViewController: UIViewController {

    @IBOutlet var itemTextField: UITextField!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var datePicker: UIDatePicker!
    
    @objc func datePickerChanged(_ datePicker:UIDatePicker) {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let strDate = dateFormatter.string(from: datePicker.date)
        dateLabel.text = strDate
    }
    
    @IBAction func button(_ sender: Any) {
        /* This is for
         ITEMS
         ITEMS */
        
        
        
        let itemsObject = UserDefaults().object(forKey: "items")
        // itemsObject holds the value for the key items
        
        var items:[String]
        //new array of string ~ items ~ is created
        
        if let tempItems = itemsObject as? [String] {
            //if tems object is an array of strin, set it equal to tempItems
            
            items = tempItems
            //set tempItems equal to items
            
            items.append(itemTextField.text!)
            //append text in text fireld to items
            
            print(items)
            
            
        } else {
            
            items = [itemTextField.text!]
            //else set items equal to the text in textfield
            
        }
        
        UserDefaults().set(items, forKey: "items")
        // sets the array items as the value for the key "items"
        
        
        itemTextField.text = ""
        // sets itemsTextField to nothing
        
        
        
        
        
        /* This is for
         DATE
         DATE */
        
        
        
        let dateObject = UserDefaults().object(forKey: "date")
        
        var date:[String]
        
        
        if let tempDate = dateObject as? [String] {
            //if tems object is an array of strin, set it equal to tempItems
            
            date = tempDate
            //set tempItems equal to items
            
            date.append(dateLabel.text!)
            //append text in text fireld to items
            
            
        }
        else {
            date = [dateLabel.text!]
            //else set items equal to the text in textfield
            
        }
        
        UserDefaults().set(date, forKey: "date")
        // sets the array items as the value for the key "items"
        
        print(date)
        //
        
        
        
        
        
        
    }
    
    // to make the keyboard disappear when touched elsewhere and (second) to make keyboard reappear
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "redYellow.png")!)

        
        datePicker.addTarget(self, action: #selector(AddGoalViewController.datePickerChanged(_:)), for: UIControlEvents.valueChanged)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    
}

