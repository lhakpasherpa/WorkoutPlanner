//
//  SignUpViewController.swift
//  WorkOutpplannerProject
//
//  Created by Gundala,Niharika on 11/5/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    

    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var dob: UITextField!
    
    @IBOutlet weak var gender: UITextField!
    
    @IBOutlet weak var height: UITextField!
    
    @IBOutlet weak var weight: UITextField!
    
    @IBOutlet weak var emailAddress: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func `continue`(_ sender: Any) {
        signUpUser()
        signUpUserAsync()
    }
    
    let APP_ID = "486B2307-4855-B7B5-FF85-592EF46A5600"
    let API_Key = "C8B0CB8B-6D7A-AB04-FFD9-CF2B967D7100"
    var backendless = Backendless.sharedInstance()!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backendless.initApp(APP_ID, apiKey: API_Key)
            
    }
    
    func signUpUser()
    {
        Types.tryblock( { () -> Void in
            let user = BackendlessUser()
            user.setProperty("firstName", object: String(describing: self.firstName.text!))
            user.setProperty("lastName", object: String(describing: self.lastName.text!))
            user.setProperty("dob", object: String(describing: self.dob.text!))
            user.setProperty("gender", object: String(describing: self.gender.text!))
            user.setProperty("height", object: String(describing: self.height.text!))
            user.setProperty("weight", object: String(describing: self.weight.text!))
            user.setProperty("email", object: String(describing: self.emailAddress.text!))
            if(String(describing: self.password.text!) as NSString == String(describing: self.confirmPassword.text!) as NSString)
            {
                user.password = String(describing: self.password.text!) as NSString
                print(String(self.password.text!))
                print(String(self.confirmPassword.text!))
            }
            else{
                self.display(title: "Password incorrect")
            }
            
            user.password = String(describing: self.password.text!) as NSString
            
            let signedupUser = self.backendless.userService.register(user)
            print("User registered (ASYNC): \(String(describing:signedupUser?.getProperty("firstName")))")
            self.display(title: "User registered (SYNC): \(String(describing:signedupUser?.getProperty("firstName")))")
        },
                       catchblock: { (exception) -> Void in
                        print("server error: \(exception as! Fault)")
                        
                        
        })
    }
    
    func signUpUserAsync()
    {
        let user = BackendlessUser()
        user.setProperty("firstName", object: String(describing:firstName.text!))
        user.setProperty("lastName", object: String(describing:lastName.text!))
        user.setProperty("dob", object: String(describing:dob.text!))
        user.setProperty("gender", object: String(describing:gender.text!))
        user.setProperty("height", object: String(describing:height.text!))
        user.setProperty("weight", object: String(describing:weight.text!))
        user.setProperty("email", object: String(describing:self.emailAddress.text!))
        
        if(String(describing: self.password.text!) as NSString == String(describing: self.confirmPassword.text!) as NSString)
        {
            user.password = String(describing: self.password.text!) as NSString
            print(String(self.password.text!))
            print(String(self.confirmPassword.text!))
        }
        else{
            display(title: "Password incorrect")
        }
        
        backendless.userService.register(user, response: { ( signedupUser : BackendlessUser!) -> () in
            self.display(title:"User registered (SYNC): \(signedupUser.getProperty("firstName"))")
        },
                                          error: { (fault : Fault!) -> () in
                                            print("server error: \(String(describing: fault))")
        })
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func display(title:String)
    {
        let alert = UIAlertController(title: title, message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        
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
