//
//  ChooseOneViewController.swift
//  PlanAir
//
//  Created by RupalT on 10/14/17.
//  Copyright © 2017 RupalT. All rights reserved.
//

import UIKit

class ChooseOneViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet var table: UITableView!
    var SecondArray = [String]()
    
    var SecondAnswerArray = [String]()
    
    
    
    
    
 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return SecondArray.count
    }
    
 func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        
        Cell.textLabel?.text = SecondArray[indexPath.row]
        
        return Cell
        
    }
    
    
    //
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "co2web"){
        let indexPath: IndexPath = self.table.indexPathForSelectedRow!
        
        
        let DestViewController = segue.destination as! WebpageViewController
        
        
        DestViewController.someString = SecondArray[indexPath.row]
        
        print(SecondArray[indexPath.row])
        //
        DestViewController.FirstString = SecondAnswerArray[indexPath.row]
        
        
        
        
        }}
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "redYellow.png")!)
        
    }
    }

