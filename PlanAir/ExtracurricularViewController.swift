//
//  ExtracurricularViewController.swift
//  PlanAir
//
//  Created by RupalT on 10/14/17.
//  Copyright © 2017 RupalT. All rights reserved.
//

import UIKit

class ExtracurricularViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet var table: UITableView!
    var FirstTableArray = [String]()
    //
    
    
    var SecondArray = [SecondTable]()
    
    var ThirdArray = [ThirdView]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "blueWC.jpg")!)
        // Do any additional setup after loading the view, typically from a nib.
        
        FirstTableArray = ["Opportunities", "Scholarships", "Volunteering"]
        
        
        
        SecondArray =
            [SecondTable(SecondTitle: ["Girls Who Code", "Research Science Institute", "NASA OSSI", "ICLEM"]),
             SecondTable(SecondTitle: ["Carnegie Communications", "AfterCollege STEM Inclusion Scholarship", "California Assn. of Collectors Educational Scholarship Foundation", "Dan Coiro Scholarship"]),
             SecondTable(SecondTitle: ["American Cancer Society", "Red Cross", "Open Heart Kitchen", "YMCA"])]
        
        
        ThirdArray = [ThirdView(ThirdViewArray: ["https://girlswhocode.com/", "https://www.cee.org/research-science-institute", "https://intern.nasa.gov/ossi/web/public/main/index.cfm?solarAction=view&subAction=content&contentCode=HOME_PAGE_INTERNSHIPS", "https://www.synberc.org/iclem"]),
                      
                      ThirdView(ThirdViewArray: ["http://www.collegexpress.com/scholarships/carnegie-communications-10000-scholarship/20240/", "http://www.collegexpress.com/scholarships/aftercollege-stem-inclusion-scholarship/2022539/", "https://www.scholarships.com/financial-aid/college-scholarships/scholarships-by-state/california-scholarships/california-assn-of-collectors-educational-scholarship-foundation/", "http://www.collegexpress.com/scholarships/dan-coiro-scholarship-by-cengagebrain/2021422/"]),
                      
                      ThirdView(ThirdViewArray: ["https://www.cancer.org/involved/volunteer/sign-up-to-volunteer.html", "http://www.redcross.org/volunteer/become-a-volunteer#step1", "https://app.betterimpact.com/Application?OrganizationGuid=66ccc9e8-658b-4f96-94a3-e665829f7850&ApplicationFormNumber=1", "YMCA"])
        ]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->Int {
        
        return FirstTableArray.count
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        
        Cell.textLabel?.text = FirstTableArray[indexPath.row]
        
        return Cell
    }
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        //
        let indexPath: IndexPath = self.table.indexPathForSelectedRow!
        //
        
        let  DestViewController = segue.destination as! ChooseOneViewController
        
        var SecondTableArrayTwo : SecondTable
        
        SecondTableArrayTwo = SecondArray[indexPath.row]
        
        DestViewController.SecondArray = SecondTableArrayTwo.SecondTitle
        
        //        print(SecondArray[indexPath.row])
        
        
        
        var ThirdAnswerArray : ThirdView
        
        ThirdAnswerArray = ThirdArray[indexPath.row]
        
        DestViewController.SecondAnswerArray = ThirdAnswerArray.ThirdViewArray
        
        //        print(ThirdArray[indexPath.row])
        
        
        
        //        DestViewController.FirstString = SecondAnswerArray[indexPath.row]
        
        
    }
    //////
}
