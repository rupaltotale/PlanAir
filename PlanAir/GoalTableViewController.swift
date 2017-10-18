//
//  GoalTableViewController.swift
//  PlanAir
//
//  Created by RupalT on 10/13/17.
//  Copyright © 2017 RupalT. All rights reserved.
//

import UIKit

class GoalTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet var table: UITableView!
    var items:[String] = []
    //new array of string ~ items ~ is created
    
    var date:[String] = []
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    //number of rows equal to count of array hobbies
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        
        cell.textLabel?.text =  items[indexPath.row] + "  |  "+date[indexPath.row ]
        return cell
    }
    
    
    
    
    override func viewDidAppear(_ animated: Bool)
        // to update the table when the first view appears rather than when you re load (open the app)
    {
        let itemsObject = UserDefaults().object(forKey: "items")
        // itemsObject holds the value for the key items
        
        let dateObject = UserDefaults().object(forKey: "date")
        
        
        if let tempItems = itemsObject as? [String] {
            //if tems object is an array of strin, set it equal to tempItems
            
            items = tempItems
            //set tempItems equal to items
            
            print(items)
            
        }
        
        if let tempDate = dateObject as? [String] {
            //if tems object is an array of strin, set it equal to tempItems
            
            date = tempDate
            //set tempItems equal to items
            
            print(date)
            
        }
        
        table.reloadData()
    }
    
    
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
        // to delete an item
    {
        if editingStyle == UITableViewCellEditingStyle.delete {
            items.remove(at: indexPath.row)
            date.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
            table.reloadData()
            
            UserDefaults().set(items, forKey: "items")
            UserDefaults().set(date, forKey: "date")
            // sets the array items as the value for the key "items"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        
        
        if (segue.identifier == "segue"){
            
            let indexPath: IndexPath = self.table.indexPathForSelectedRow!
            
            //in the console
            
            print(items[indexPath.row])
            
            
            
            //
            
            
            
            let nextVC = segue.destination as! EditGoalViewController
            
            
            
            nextVC.itemsExpand = items[indexPath.row]
            
            nextVC.dateExpand = date[indexPath.row]
            
            nextVC.position = indexPath.row
            
            
            
            
            
            
            
            
            
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "redYellow.png")!)
        
        //        self.view.backgroundColor = UIColor(patternImage: UIImage(named: ))
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}


}
