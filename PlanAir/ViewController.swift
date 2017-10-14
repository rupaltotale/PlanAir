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
    
    
    @IBAction func editButton(_ sender: Any) {
        save.isEnabled = true
        GPAuw.isHidden = false
        GPAw.isHidden = false
        SAT.isHidden = false
        ACT.isHidden = false
    }
    @IBAction func saveButton(_ sender: Any) {
        //act
        if GPAuw.text!.characters.count < 10{
            UserDefaults.standard.set(GPAuw.text, forKey: "name")
            
            let Name = UserDefaults.standard.object(forKey: "name")
            
            
            
            
            
            if let userName = Name as? NSString{
                
                lGPAuw.text = String("ACT: " + (userName as String))
                
                
                GPAuw.text = " "
                
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
            GPAw.text = " "
        }
        
        
        
        //sat
        
        
        if SAT.text!.characters.count < 15 {
            UserDefaults.standard.set(SAT.text, forKey: "sat")
            
            let sat = UserDefaults.standard.object(forKey: "sat")
            
            
            
            
            
            if let userSat = sat as? NSString{
                
                lSAT.text = String("SAT: " + (userSat as String))
                SAT.text = " "
            }
            
            
        }
            
        else {
            
            lSAT.text = "Too long, type a shorter score"
            SAT.text = " "
            
        }
        
        
        
        
        
        //gpa
        
        UserDefaults.standard.set(ACT.text, forKey: "gpa")
        
        let gpa = UserDefaults.standard.object(forKey: "gpa")
        
        
        
        
        
        if let userGpa = gpa as? NSString{
            
            lACT.text = String("GPA: " + (userGpa as String))
            ACT.text = " "
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
            
        }
        
        
        
        //Grade
        
        let grade = UserDefaults.standard.object(forKey: "grade")
        
        
        
        
        
        if let userGrade = grade as? NSString{
            
            lGPAw.text = String("Weighted GPA: " + (userGrade as String))
            
            
            
        }
        
        
        
        //SAT
        
        let sat = UserDefaults.standard.object(forKey: "sat")
        
        
        
        
        
        if let userSat = sat as? NSString{
            
            lSAT.text = String("SAT: " + (userSat as String))
            
            
            
            
            
        }
        
        //GPA
        
        let gpa = UserDefaults.standard.object(forKey: "gpa")
        
        
        
        
        
        if let userGpa = gpa as? NSString{
            
            lACT.text = String("ACT: " + (userGpa as String))
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

