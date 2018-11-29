//
//  LoginViewController.swift
//  WorkOutpplannerProject
//
//  Created by Vemula,Karthik Raja on 11/5/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBAction func Login(_ sender: Any) {
        registeredUser()
    }
    
    @IBOutlet weak var Username: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    let backendless = Backendless.sharedInstance()!
    
    
    func registeredUser() {
        
        backendless.userService.login(Username.text, password : Password.text,               response: {
            (loggedUser : BackendlessUser?) -> Void in
            
            print("User has been logged in (SYNC): \(String(describing: loggedUser))")
            print("User logged in")
            
        },
                                      error: {
                                        (fault : Fault?) -> Void in
                                        print("Server reported an error: \(String(describing: fault?.description))")
                                        self.display(title: "Invalid User Login and password")
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    


override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}
func display(title:String){
    
    let alert = UIAlertController(title: title, message: "", preferredStyle: .alert)
    let action = UIAlertAction(title: "OK", style: .default, handler: nil)
    alert.addAction(action)
    present(alert, animated: true, completion: nil)
}
}
