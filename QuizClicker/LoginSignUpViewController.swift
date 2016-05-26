//
//  LoginRegisterViewController.swift
//  QuizClicker
//
//  Created by Victor Li Wang on 5/25/16.
//  Copyright © 2016 Victor Li Wang. All rights reserved.
//

import UIKit

class LoginRegisterViewController: UIViewController {
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!

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
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */

    
    @IBAction func onLogin(sender: AnyObject) {
        //you will be sent to page with table of groups
        
        performSegueWithIdentifier("onLogin", sender: nil)
    }
    
    @IBAction func cancelToLoginSignUpViewController(segue:UIStoryboardSegue) {
        
    }
}
