//
//  ForgotPasswordViewController.swift
//  WorkOutpplannerProject
//
//  Created by Sherpa,Lhakpa S on 11/28/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    @IBOutlet weak var userTF: UITextField!
    
    @IBOutlet weak var newPassTF: UITextField!
    
    @IBOutlet weak var conformPassTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func doneBTN(_ sender: Any) {
        let uName = userTF.text! as String
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
