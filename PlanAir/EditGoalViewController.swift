//
//  EditGoalViewController.swift
//  PlanAir
//
//  Created by RupalT on 10/14/17.
//  Copyright © 2017 RupalT. All rights reserved.
//

import UIKit

class EditGoalViewController: UIViewController {

   
    
    var itemsExpand = String()
    
    var position = 0
    
    var dateExpand = String()
    
    var NewDate = String()
    
    
    
    @objc func datePickerChanged(_ datePicker:UIDatePicker) {
        
        let Formatter = DateFormatter()
        
        
        
        Formatter.dateStyle = DateFormatter.Style.short
        
        Formatter.timeStyle = DateFormatter.Style.short
        
        
        
        
        let strDate = Formatter.string(from: datePickerBox.date)
        
        dateLabel.text = "Date: " + strDate
        
        NewDate = strDate
        
        print(strDate)
        
        
        //        presentViewController(ViewController, animated: true, completion: nil)
        
    }
    
    @IBOutlet var text: UITextView!
    
    @IBOutlet var dateLabel: UILabel!
    
    @IBOutlet var datePickerBox: UIDatePicker!
    
    
    @IBAction func save(_ sender: Any) {
        let itemsObject = UserDefaults().object(forKey: "items")
        
        // itemsObject holds the value for the key items
       
        
        var items:[String]
        
        //new array of string ~ items ~ is created
        
        
        
        if let tempItems = itemsObject as? [String] {
            
            //if items object is an array of strings, set it equal to tempItems
            
            
            
            items = tempItems
            
            //set tempItems equal to items
            
            
            
            items[position] = text.text!
            
            
            
            //append text in text field to items
            
            
            
            
            
            UserDefaults().set(items, forKey: "items")
            
            // sets the array items as the value for the key "items"
            
            
            
            /* This is for
             
             DATE
             
             DATE */
            
            
            
            let dateObject = UserDefaults().object(forKey: "date")
            
            
            
            var date:[String]
            
            
            
            
            
            if let tempDate = dateObject as? [String] {
                
                //if tems object is an array of strin, set it equal to tempItems
                
                
                
                date = tempDate
                
                //set tempItems equal to items
                
                
                
                date[position] = NewDate
//                date.append(dateLabel.text!)
                
                UserDefaults().set(date, forKey: "date")
                
            }
            
            
            
            
        }}
    
    // to make the keyboard disappear when touched elsewhere and (second) to make keyboard reappear
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
        
        
    }
    override func viewDidLoad() {
        text.text = itemsExpand
        
        dateLabel.text = "Date: " + dateExpand
        
        NewDate = dateExpand
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "redYellow.png")!)
        
        
        
        
        super.viewDidLoad()
        
        
        
        datePickerBox.addTarget(self, action: #selector(EditGoalViewController.datePickerChanged(_:)), for: UIControlEvents.valueChanged)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}

