//
//  ViewController.swift
//  PlanAir
//
//  Created by RupalT on 10/13/17.
//  Copyright © 2017 RupalT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var GPAuw: UITextField!
    @IBOutlet var lGPAuw: UILabel!
    
    @IBOutlet var GPAw: UITextField!
    @IBOutlet var lGPAw: UILabel!
   
    @IBOutlet var SAT: UITextField!
    @IBOutlet var lSAT: UILabel!
    
    @IBOutlet var ACT: UITextField!
    @IBOutlet var lACT: UILabel!

    
    @IBOutlet var save: UIBarButtonItem!
    
    @IBOutlet var edit: UIBarButtonItem!
    
    @IBAction func editButton(_ sender: Any) {
//        self.view.editing
        edit.isEnabled = false
        save.isEnabled = true
        GPAuw.isHidden = false
        GPAw.isHidden = false
        SAT.isHidden = false
        ACT.isHidden = false
    }
    @IBAction func saveButton(_ sender: Any) {
        
        edit.isEnabled = true
        self.view.endEditing(true)
        
        if GPAuw.text!.characters.count < 10{
            UserDefaults.standard.set(GPAuw.text, forKey: "name")
            
            let Name = UserDefaults.standard.object(forKey: "name")
            
            
            if let userName = Name as? NSString{
                
                lGPAuw.text = String("Unweighted GPA: " + (userName as String))
                
                
                GPAuw.text = (userName as String)
                
            }
            
        }
            
        else{
            
            lGPAuw.text = "Too long, type a shorter score"
            GPAuw.text = " "
            
            
        }
        
        
        
        
        
        //wgpa
        
        UserDefaults.standard.set(GPAw.text, forKey: "grade")
        
        let grade = UserDefaults.standard.object(forKey: "grade")
        
        
        
        
        
        if let userGrade = grade as? NSString{
            
            lGPAw.text = String("Weighted GPA: " + (userGrade as String))
            GPAw.text = (userGrade as String)
        }
        
        
        
      
        
        
        if SAT.text!.characters.count < 15 {
            UserDefaults.standard.set(SAT.text, forKey: "sat")
            
            let sat = UserDefaults.standard.object(forKey: "sat")
            
            
            
            
            
            if let userSat = sat as? NSString{
                
                lSAT.text = String("SAT: " + (userSat as String))
                SAT.text = (userSat as String)
            }
            
            
        }
            
        else {
            
            lSAT.text = "Too long, type a shorter score"
            SAT.text = " "
            
        }
        
        
        
        
        
    
        
        UserDefaults.standard.set(ACT.text, forKey: "gpa")
        
        let gpa = UserDefaults.standard.object(forKey: "gpa")
        
        
        
        
        
        if let userGpa = gpa as? NSString{
            
            lACT.text = String("ACT: " + (userGpa as String))
            ACT.text = (userGpa as String)
        }
        
        save.isEnabled = false
        GPAuw.isHidden = true
        GPAw.isHidden = true
        SAT.isHidden = true
        ACT.isHidden = true
        
    }
    
    
    
    //make the keyboard dissapper
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //make the keyboard appear
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        save.isEnabled = false
        GPAuw.isHidden = true
        GPAw.isHidden = true
        SAT.isHidden = true
        ACT.isHidden = true
        
//        self.window.backgroundColor = [UIColor patternImage:[UIImage imageNamed:@"background_image.1.png"]];
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "byg.png")!)
        
        //username
        
        let Name = UserDefaults.standard.object(forKey: "name")
        
        
        
        
        
        if let userName = Name as? NSString{
            
            lGPAuw.text = String("Unweighted GPA: " + (userName as String))
            GPAuw.text = (userName as String)
            
        }
        
        
        
        //Grade
        
        let grade = UserDefaults.standard.object(forKey: "grade")
        
       
        
        
        
        if let userGrade = grade as? NSString{
            
            lGPAw.text = String("Weighted GPA: " + (userGrade as String))
             GPAw.text = (userGrade as String)
            
            
        }
        
        
        
        //SAT
        
        let sat = UserDefaults.standard.object(forKey: "sat")
        
        
        
        
        
        if let userSat = sat as? NSString{
            
            lSAT.text = String("SAT: " + (userSat as String))
            
            SAT.text =  (userSat as String)
            
            
            
        }
        
        //GPA
        
        let gpa = UserDefaults.standard.object(forKey: "gpa")
        
        
        
        
        
        if let userGpa = gpa as? NSString{
            
            lACT.text = String("ACT: " + (userGpa as String))
            ACT.text = (userGpa as String)
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
//    if (theTextField == self.textPassword) {
//    [theTextField resignFirstResponder];
//    } else if (theTextField == self.textUsername) {
//    [self.textPassword becomeFirstResponder];
//    }
//    return YES;
//    }
//    func textFieldShouldReturn(textField: UITextField) -> Bool {
//
//        if textField == GPAuw { // Switch focus to other text field
//            GPAw.becomeFirstResponder()
//        }
//        else if textField == GPAw { // Switch focus to other text field
//            SAT.becomeFirstResponder()
//        }
//        else if textField == SAT { // Switch focus to other text field
//            ACT.becomeFirstResponder()
//        }
//        else{
//            textField.resignFirstResponder()
//        }
//        return true
//    }
    
//    func textFieldShouldReturn(textField: UITextField) -> Bool {
//        
//        let nextTage=textField.tag+1;
//        // Try to find next responder
//        let nextResponder=textField.superview?.viewWithTag(nextTage) as UIResponder!
//        
//        if (nextResponder != nil){
//            // Found next responder, so set it.
//            nextResponder?.becomeFirstResponder()
//        }
//        else
//        {
//            // Not found, so remove keyboard
//            textField.resignFirstResponder()
//        }
//        return false // We do not want UITextField to insert line-breaks.
//    }

}

