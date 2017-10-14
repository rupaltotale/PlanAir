//
//  WebpageViewController.swift
//  PlanAir
//
//  Created by RupalT on 10/14/17.
//  Copyright © 2017 RupalT. All rights reserved.
//

import UIKit

class WebpageViewController: UIViewController {

   
    @IBAction func add(_ sender: Any) {
        
        
        let itemsObject = UserDefaults().object(forKey: "items")
        // itemsObject holds the value for the key items
        
        var items:[String]
        //new array of string ~ items ~ is created
        
        if let tempItems = itemsObject as? [String] {
            //if tems object is an array of strin, set it equal to tempItems
            
            items = tempItems
            //set tempItems equal to items
            
            items.append(someString)
            //append text in text fireld to items
            
            print(items)
            
            
        } else {
            
            items = [someString]
            //else set items equal to the text in textfield
            
        }
        
        
        
        
        
        
        let dateObject = UserDefaults().object(forKey: "date")
        
        var date:[String]
        
        
        if let tempDate = dateObject as? [String] {
            //if tems object is an array of strin, set it equal to tempItems
            
            date = tempDate
            //set tempItems equal to items
            
            date.append("No date")
            //append text in text fireld to items
            
            
        }
        else {
            date = ["No date"]
            //else set items equal to the text in textfield
            
        }
        
        UserDefaults().set(date, forKey: "date")
        // sets the array items as the value for the key "items"
        
        print(date)
        
        UserDefaults().set(items, forKey: "items")
        // sets the array items as the value for the key "items"

    }
    
    
    
    
    @IBOutlet var WebView: UIWebView!
    var someString = String()
    
    var FirstString = String()
    //a variable FirstString holds the text that string holds??
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "blueWC.jpg")!)
        
        //        TextView.text = the label holds the text that is set to firstString
        
        let myurl = URL(string: FirstString)!
        
        WebView.loadRequest(URLRequest(url: myurl))
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


