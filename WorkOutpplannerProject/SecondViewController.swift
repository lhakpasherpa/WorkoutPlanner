//
//  SecondViewController.swift
//  WorkOutpplannerProject
//
//  Created by Student on 10/6/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameLBL: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var descView: UITextView!
    
    @IBOutlet weak var weightTF: UITextField!
    
    @IBOutlet weak var durationTF: UITextField!
    
    @IBOutlet weak var caloriesTF: UITextField!
    
   
    
    @IBAction func calculateBTN(_ sender: Any) {
        if let w:Double = Double(weightTF.text!), let d:Double = Double(durationTF.text!){
            let caloriesBurnt = d * (4 * 3.5 * w) / 200
            caloriesTF.text = "\(caloriesBurnt)"
        }
        
        else {
            
            let  alert  =  UIAlertController(title:"Alert",  message:  "Missing data",preferredStyle:.alert)
            alert.addAction(UIAlertAction(title:  "OK",  style:  .default,  handler: nil))
            self.present(alert,  animated:  true,  completion:  nil)
        }
        
    }
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLBL.text = cardio[myIndex]
        descView.text = cardioDisc[myIndex]
//        imageView.image = UIImage(named: "image-1")
        imageView.image = UIImage(named: "Image")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

