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
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "redYellow.png")!)
        // Do any additional setup after loading the view, typically from a nib.
        
        FirstTableArray = ["Opportunities", "Scholarships", "Volunteering"]
        
        
        
        SecondArray =
            [SecondTable(SecondTitle: ["Girls Who Code", "Research Science Institute", "NASA OSSI", "ICLEM","Arthritis Foundation Summer Science Internship", "KP Launch Program", "Metropolitan Transportation Commission Internship Program ", "Science & Engineering Apprenticeship Program (SEAP)  ", "UC Davis-Young Scholars Program"]),
             SecondTable(SecondTitle: ["Carnegie Communications", "AfterCollege STEM Inclusion Scholarship", "California Assn. of Collectors Educational Scholarship Foundation", "Dan Coiro Scholarship"]),
             SecondTable(SecondTitle: ["American Cancer Society", "Red Cross", "Open Heart Kitchen", "YMCA"])]
        
        
        ThirdArray = [ThirdView(ThirdViewArray: ["Free 7-week summer programs for current 10th-11th grade girls to learn coding and get exposure to tech jobs. Each week of the program covers projects related to computer science, such as art, storytelling, robotics, video games, web sites, and apps. You’ll also hear from guest speakers, participate in workshops, connect with female engineers and entrepreneurs, and go on field trips. The program culminates in a final project where you build your own product and share it with your class."
            
            , "Each summer, 80 of the world's most accomplished high school students gather at the Massachusetts Institute of Technology (MIT) for the Research Science Institute (RSI). RSI is the first cost-free to students, summer science & engineering program to combine on-campus course work in scientific theory with off-campus work in science and technology research. " ,
              
              "Each summer, 80 of the world's most accomplished high school students gather at the Massachusetts Institute of Technology (MIT) for the Research Science Institute (RSI). RSI is the first cost-free to students, summer science & engineering program to combine on-campus course work in scientific theory with off-campus work in science and technology research."
,
              
              "iCLEM is a student program that was initiated by Synberc and being sustained by the Joint BioEnergy Institute. The Introductory College Level Experience in Microbiology (iCLEM) is an eight-week paid summer research program for high-potential, low-income high school sophomores and juniors.",
            
              "8-week internship for juniors & seniors in Northern California; $1,500 stipend; must be US citizen or permanent resident & at least 17 years old. Internships at UCSF & Stanford ",
              "Kaiser Permanente in Oakl& & other Bay Area locations; 8 weeks, full time. Program targets underserved HS students ",
              
              "Introduces HS students to career opportunities in the field of transportation via internships with MTC’s transportation partners (such as traffic engineers at city & county public works departments or planners at transit agencies). Must be 16 years of age by mid-June, have completed 10th grade, & live in the county in which project is located ",
              
              "8-week internship at a Department of Navy lab. Participating labs all over the country. Must be 16. $3,300 stipend but no travel/relocation allowance provided ",
              
              "6 week summer residential internship program. Focus on biological, environmental & agricultural sciences. Must be rising junior or senior"
            
            
            
            ]),
                      
                      ThirdView(ThirdViewArray: ["Applicant must register on CollegeXpress (or fill out a response card from Careers and Colleges magazine or Private Colleges & Universities magazines) and be entering college for the first time, accepted as a full-time freshman or transfer student for the fall term. A list of eligible colleges/universities is available at CollegeXpress.com. You do not need to complete an application for this scholarship.",
                                                 
                         "Scholarships are for students who demonstrate professionalism and effectively communicate how they will be exemplary candidates in their field. Open to currently enrolled students working toward a degree in a field of Science, Technology, Engineering or Mathematics from a group underrepresented in their field of study. Underrepresented groups may be defined by: gender, race, ethnic background, disability, sexual orientation, age, socio-economic status, nationality and other non-visible differences.",
                         
                         "The Educational Scholarship Foundation was founded in 2005 by the California Association of Collectors (CAC ESF). The scholarship requires a simple one-page application and an essay on .The Importance of Establishing and Maintaining Good Financial Credit During Your College Years. The scholarship is available to any California high school senior for their use at any accredited college, university, or trade school.",
                         
                         "The Daniel Coiro Scholarship by CengageBrain is providing three scholarships for $2,500 to deserving students. The Center for Scholarship Administration, Inc. (CSA), a non-profit, independent organization is the facilitator of the program.The Dan Coiro Scholarship is open to students who are interested in the sciences and/or engineering!!"]),
                      
                      ThirdView(ThirdViewArray: ["Dedicated to helping people who face cancer",
                                                 
                                                 "25% of Red Cross volunteers are age 24 or younger. Being young is no barrier to being able to help people in need, in your community and around the world! Create, plan and participate in service projects to help your school, your community and make an impact around the globe.",
                                                 
                                                 "Open Heart Kitchen has been providing fresh, nutritious meals to anyone in need since 1995. All volunteers must first register and be approved through our on­line process before you can volunteer.",
                                                 
                                                 "When you volunteer at the Y, you provide leadership and talent vital to empowering people and communities to learn, grow and thrive."])
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
        
        
        
        if (segue.identifier == "ec2co"){
        let indexPath: IndexPath = self.table.indexPathForSelectedRow!
        
        
        let  DestViewController = segue.destination as! ChooseOneViewController
        
        var SecondTableArrayTwo : SecondTable
        
        SecondTableArrayTwo = SecondArray[indexPath.row]
        
        DestViewController.SecondArray = SecondTableArrayTwo.SecondTitle
        

        
        
        
        var ThirdAnswerArray : ThirdView
        
        ThirdAnswerArray = ThirdArray[indexPath.row]
        
        DestViewController.SecondAnswerArray = ThirdAnswerArray.ThirdViewArray
        
       
        
    }
    
}
}
