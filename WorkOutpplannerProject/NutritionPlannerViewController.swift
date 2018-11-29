//
//  NutritionPlannerViewController.swift
//  WorkOutpplannerProject
//
//  Created by Student on 10/6/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class NutritionPlannerViewController: UIViewController {
    
    
    @IBOutlet weak var MorningLBL: UITextField!
    
    @IBOutlet weak var NoonLBL: UITextField!
    
    @IBOutlet weak var EveningLBL: UITextField!
    
    @IBOutlet weak var NightLBL: UITextField!
    
    @IBOutlet weak var CalAvg: UITextField!
    @IBAction func AverageCalIntake(_ sender: Any) {
        
        if let Morning = Double(MorningLBL.text!), let Noon = Double(NoonLBL.text!), let Evening = Double(EveningLBL.text!), let Night = Double(NightLBL.text!)
        {
      CalAvg.text = String(( Morning + Noon + Evening + Night ) / 4)
        
        
    }
        else
        {
            let alert = UIAlertController(title:  "Error!!!",  message:  "Missing input!!!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:  "OK",  style:  .default,  handler:  nil))
            self.present(alert,  animated:  true,  completion:  nil)
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

